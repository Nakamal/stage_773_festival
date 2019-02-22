class Api::SponsersController < ApplicationController
  def index
    @sponsers = Sponser.all
    
    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @sponser = Sponser.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @sponser = Sponser.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @sponser = Sponser.find(params[:id])

    render json: {message: "Successfully Destroyed!"}
  end
end
