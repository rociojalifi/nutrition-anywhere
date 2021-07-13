class UsersController < ApplicationController
  def settings
  end

  def index
    @users = User.all
  end
end
