class UsersController < ApplicationController
  def settings
  end

  def about
  end

  def index
    @users = User.all
  end
end
