class PagesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, only: :home

  def home
    # @services = Service.all.shuffle.first(3)

    if params[:query].present?
      redirect_to services_path(query: params[:query])
    end
    
  end
end
