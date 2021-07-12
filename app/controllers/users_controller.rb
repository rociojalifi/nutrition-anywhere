class UsersController < ApplicationController
  def settings
  end

  def zoom_auth_url
    "https://zoom.us/oauth/authorize?client_id=#{ENV['ZOOM_CLIENT_ID']}&response_type=code&redirect_uri=#{ENV['ZOOM_CALLBACK']}"
  end
end
