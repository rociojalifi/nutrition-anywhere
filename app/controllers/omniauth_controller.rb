class OmniauthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :zoom

  def zoom
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
