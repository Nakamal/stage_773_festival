class Api::SponserApplicationsController < ApplicationController
  def index
    @sponser_applications = SponserApplication.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @sponser_application = SponserApplication.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @sponser_application = SponserApplication.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @sponser_application = SponserApplication.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
