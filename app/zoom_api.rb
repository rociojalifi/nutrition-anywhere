require 'net/http'
require 'uri'
require 'json'



def create_meeting
  zoom_token = "eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhZmExNGU0NC1lYWY2LTRiNDAtYTdhMS0wZmRiMmQ2MTJlMGUifQ.eyJ2ZXIiOjcsImF1aWQiOiJkNTk1MjJlNmRkOWIyMWIwZWM5YmJkM2EwNWM0OTZhMSIsImNvZGUiOiJDMmh1TUU1cVdUX0xkRHpmWHhuUV9LSTBJM2pFUXo1WFEiLCJpc3MiOiJ6bTpjaWQ6cVlvZDE3RzRTYlNwTGc0RFhZYkNOZyIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJMZER6Zlh4blFfS0kwSTNqRVF6NVhRIiwibmJmIjoxNjI2MTczNjkwLCJleHAiOjE2MjYxNzcyOTAsImlhdCI6MTYyNjE3MzY5MCwiYWlkIjoiTzF6S1ZKUUpSdmlkLVZ2UXpIV1FLZyIsImp0aSI6IjkxNjAyNWZkLTNkYzUtNDVlOC05ZjJmLWNhYzZlOGYwYjU1NiJ9.E8flGhW-XWdW0xM9RQ_oVSYGBN1MAjStCH4mt6yIHCHssQJD7biglKFctsq6hRdTjAQKzk2Txo2qntcuKa3NNw"
  zoom_api = "https://api.zoom.us/v2/"
  user_id_zoom = "me"

  uri = URI.parse("#{zoom_api}#{user_id_zoom}/meetings")

  header = {'Authorization': "Bearer #{zoom_token}"}
  params = {
    "topic": @booking.service,
    "type": 2,
    "start_time": @booking.booking_date,
    "duration": 60,
    "schedule_for": @booking.booking_date,
    "password": "string",
    "agenda": "string",
    "recurrence": {
      "type": "integer",
      "repeat_interval": "integer",
      "weekly_days": "string",
      "monthly_day": "integer",
      "monthly_week": "integer",
      "monthly_week_day": "integer",
      "end_times": "integer",
      "end_date_time": "string [date-time]"
    },
    "settings": {
      "host_video": true,
      "participant_video": true,
      "cn_meeting": true,
      "in_meeting": true,
      "join_before_host": false,
      "mute_upon_entry": false,
      "watermark": false ,
      "use_pmi": true,
      "enforce_login": true,
      "enforce_login_domains": "string",
      "alternative_hosts": "string",
      "global_dial_in_countries": [
        "string"
      ],
      "registrants_email_notification": true
    }
  }
  #create http objetc
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new(uri.request_uri, header)
  request.body = params.to_json

  #post response
  response = http.request(request)



  description = @booking.service
  start_date = @booking.booking_date
  duration = 60
  patient_email = @booking.user.email

end

def meeting_params
  meeting_params = {
    description: @booking.service,
    date: @booking.booking_date,
    duration: 60,
    patient_id: @service.user.email
  }
end

def meeting_url
    @pacient => User.find_by_id(@booking.user_id)
    @nutritionist = User.find_by_id(@service.user_id)
    
    if nutritionist.zoom_token?
      meeting = create_meeting
      @booking.meeting_url = meeting[:url]
      @booking.meeting_metadata = meeting[:metadata]

    end

end