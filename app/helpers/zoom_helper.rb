require 'faraday'
require 'faraday_middleware'
require 'json'
require 'base64'
require 'date'
require 'activesupport'


module ZoomHelper
  @@json_client = Faraday.new do |f|
    f.request :json
    f.response :json
  end
  
  @@zoom_api_base_url = "https://api.zoom.us/v2"

  def create_zoom_meeting(token, meeting_info)
    url = "#{@@zoom_api_base_url}/users/me/meetings"

    params = {
      "topic": meeting_info[:topic],
      "type": 2,
      "start_time": meeting_info[:date],
      "duration": meeting_info[:duration],
      "settings": {
        "host_video": true,
        "participant_video": true,
        "join_before_host": false,
        "mute_upon_entry": false,
        "enforce_login": true,
        "registrants_email_notification": true
      }
    }

    response = @@json_client.post(url) do |request|
      request.headers['Content-Type'] = 'application/json'
      request.headers['Authorization'] = "Bearer #{token}"
      request.body = params
    end
    
    Rails.logger.debug("Status: #{response.status}")
    Rails.logger.debug(response.body)

    return nil unless response.status < 300

    { url: response.body['start_url'], id: response.body['id'], metadata: response.body }
  end

  def add_participant_to_zoom_meeting(token, meeting_id, participant_info)
    url = "#{@@zoom_api_base_url}/meetings/#{meeting_id}/registrants"

    params = {
      "email": participant_info[:email],
      "first_name": participant_info[:name]
    }

    response = @@json_client.post(url) do |request|
      request.headers['Content-Type'] = 'application/json'
      request.headers['Authorization'] = "Bearer #{token}"
      request.body = params
    end
    
    response.status < 300
  end

  def refresh_zoom_token(token, refresh_token, expiration)
    now = DateTime.now
    did_not_expire_yet = now < DateTime.parse(expiration)

    return {token: token, refresh_token: refresh_token, expiration: expiration} if did_not_expire_yet

    url = "https://zoom.us/oauth/token"

    response = Faraday.post(url) do |request|
      client_id = ENV['ZOOM_CLIENT_ID']
      client_secret = ENV['ZOOM_CLIENT_SECRET']
      auth = Base64.encode64("#{client_id}:#{client_secret}")
      request.headers['Authorization'] = "Basic #{auth}"
      request.headers['Content-Type'] = 'application/x-www-form-urlencoded'
      request.body = {grant_type: 'refresh_token', refresh_token: refresh_token}
    end

    return nil if response.status > 299

    next_expiration = now + 60.minutes

    {token: response.body['access_token'], refresh_token: response.body['refresh_token'], expiration: next_expiration.to_s}
  end
end