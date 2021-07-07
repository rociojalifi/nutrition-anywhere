class PagesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
  end
end
