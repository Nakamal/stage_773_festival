class Api::PeopleController < ApplicationController
  def index
    @people = Person.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @person = Person.find(params[:id])
    
    render 'show.json.jbuilder'
  end

  def update
    @person = Person.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @person = Person.find(params[:id])

    render json: {message: "Successfully Destroyed!"}
  end
end
