class Api::EventsController < ApplicationController
  def index
    @events = Event.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @event = Event.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @event = Event.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @event = Event.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
