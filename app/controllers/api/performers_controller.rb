class Api::PerformersController < ApplicationController
  def index
    @performers = Performer.all  

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @performer = Performer.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @performer = Performer.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @performer = Performer.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
