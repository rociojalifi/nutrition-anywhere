class OmniauthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :zoom

  def zoom
    current_user.save_zoom_token(request.env['omniauth.auth'].credentials)
    redirect_to '/users/settings'
  end
end
