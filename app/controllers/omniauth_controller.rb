class OmniauthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :zoom

  # OAuth Flow
  #
  # 1 ------> Navigate to Zoom (user interacts with Zoom) ?callback_url=nutri.com/callback
  # 2 <------ Redirect back (to /callback?auth_request_id=asdf1234)
  #
  # 3 ------> POST Url: zoom.us/api/auth / Body: auth_request_id + zoom_client_secret
  # 4 <------ { access_token, refresh_token }
  #
  #    ...
  #    ...
  #    ...
  #
  # Requests to the API
  #
  # 5 ------> POST Url: zoom.us/api/meeting 
  #                Headers: access_token
  # 6 <------ { id: kjhg9876, ... }

  def zoom
    # https://github.com/koshilife/omniauth-zoom#auth-hash-example
    credentials = request.env['omniauth.auth'].credentials

    params = {
      token: credentials.token,
      refresh_token: credentials.refresh_token,
      expiration: DateTime.strptime(credentials.expires_at.to_s, "%s").to_s
    }

    current_user.save_zoom_token(params)
    redirect_to '/users/settings'
  end
end
