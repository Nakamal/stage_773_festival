class Api::DonationsController < ApplicationController
  def index
    @donations = Donation.all

    render 'index.json.jbuilder'
  end

  def create
    @donation = Donation.new(
                          sponser_id: params[:sponser_id],
                          amount: params[:amount],
                          start_date: params[:start_date]
                          )
    if @donation.save 
      render 'show.json.jbuilder'
    else
      render json: { errors: @donation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @donation = Donation.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @donation = Donation.find(params[:id])

    @donation.sponser_id = params[:sponser_id] || @donation.sponser_id
    @donation.amount = params[:amount] || @donation.amount
    @donation.start_date = params[:start_date] || @donation.start_date

    if @donation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @donation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @donation = Donation.find(params[:id])
    render json: {message: "Donation Removed"}
  end
end
