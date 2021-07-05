class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @services = Service.all.shuffle.first(3)
  end
end
