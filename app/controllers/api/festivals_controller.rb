class Api::FestivalsController < ApplicationController
  def index
    @festivals = Festival.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @festival = Festival.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @festival = Festival.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @festival = Festival.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
