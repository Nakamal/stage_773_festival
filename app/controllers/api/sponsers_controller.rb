class Api::SponsersController < ApplicationController
  def index
    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    render 'show.json.jbuilder'
  end

  def update
    render 'show.json.jbuilder'
  end

  def destroy
    render json: {message: "Successfully Destroyed!"}
  end
end
