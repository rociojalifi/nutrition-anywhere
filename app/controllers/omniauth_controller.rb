class OmniauthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :zoom

  def zoom
    credentials = request.env['omniauth.auth'].credentials
    current_user.save_zoom_token(credentials)
    redirect_to '/users/settings'
  end
end
