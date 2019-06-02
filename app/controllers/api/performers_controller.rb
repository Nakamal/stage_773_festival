class Api::PerformersController < ApplicationController
  def index
    @performers = Performer.all  

    render 'index.json.jbuilder'
  end

  def create
    if current_user && current_user.admin
      
      @performer = Performer.new(
                            festival_application_id: params[:festival_application_id],
                            name: params[:name],
                            role: params[:role]
                            )
      if @performer.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @performer.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @performer = Performer.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @performer = Performer.find(params[:id])

    @performer.festival_application_id = params[:festival_application_id] || @performer.festival_application_id
    @performer.name = params[:name] || @performer.name
    @performer.role = params[:role] || @performer.role

    if @performer.save
      render "show.json.jbuilder"
    else
      render json: { errors: @performer.errors.full_messages }, status: :unprocessable_entity
    end

    render 'show.json.jbuilder'
  end

  def destroy
    @performer = Performer.find(params[:id])
    @performer.destroy
    render json: {message: "Performer Removed"}
  end
end
