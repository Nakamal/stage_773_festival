class Api::DonationsController < ApplicationController
  def index
    @donations = Donation.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @donation = Donation.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @donation = Donation.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @donation = Donation.find(params[:id])

    render json: {message: "Successfully Destroyed!"}
  end
end
