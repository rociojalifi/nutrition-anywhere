Rails.application.config.middleware.use OmniAuth::Builder do
  zoom_scopes = %i[user_profile meeting:write].join(',')
  zoom_client_id = ENV['ZOOM_CLIENT_ID']
  zoom_client_secret = ENV['ZOOM_CLIENT_SECRET']
  
  provider :zoom, zoom_client_id, zoom_client_secret, :scope => zoom_scopes, provider_ignores_state: true
end