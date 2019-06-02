class Api::SponserApplicationsController < ApplicationController
  def index
    @sponser_applications = SponserApplication.all

    render 'index.json.jbuilder'
  end

  def create
    @sponser_application = SponserApplication.new(
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          company: params[:company],
                          email: params[:email],
                          subject: params[:subject],
                          body: params[:body]
                          )
    if @sponser_application.save 
      render 'show.json.jbuilder'  
    else
      render json: { errors: @sponser_application.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @sponser_application = SponserApplication.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @sponser_application = SponserApplication.find(params[:id])

    @sponser_application.first_name = params[:first_name] || @sponser_application.first_name
    @sponser_application.last_name = params[:last_name] || @sponser_application.last_name
    @sponser_application.company = params[:company] || @sponser_application.company
    @sponser_application.email = params[:email] || @sponser_application.email
    @sponser_application.subject = params[:subject] || @sponser_application.subject
    @sponser_application.body = params[:body] || @sponser_application.body

    if @sponser_application.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @sponser_application.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @sponser_application = SponserApplication.find(params[:id])
    @sponser_application.destroy
    render json: {message: "Sponser Removed"}
  end
end
