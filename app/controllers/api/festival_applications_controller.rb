class Api::FestivalApplicationsController < ApplicationController
  def index
    @festival_applications = FestivalApplication.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @festival_application = FestivalApplication.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @festival_application = FestivalApplication.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @festival_application = FestivalApplication.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
