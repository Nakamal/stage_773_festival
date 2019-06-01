class Api::FestivalsController < ApplicationController
  def index
    @festivals = Festival.all

    render 'index.json.jbuilder'
  end

  def create
    if current_user && current_user.admin
      
      @festival = Festival.new(
                            application_start: params[:application_start],
                            application_end: params[:application_end],
                            public_start: params[:public_start],
                            name: params[:name],
                            description: params[:description]
                            )
      if @festival.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @festival.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @festival = Festival.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @festival = Festival.find(params[:id])

    @festival.application_start = params[:application_start] || @festival.application_start
    @festival.application_end = params[:application_end] || @festival.application_end
    @festival.public_start = params[:public_start] || @festival.public_start
    @festival.name = params[:name] || @festival.name
    @festival.description = params[:description] || @festival.description

    if @festival.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @festival.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @festival = Festival.find(params[:id])
    @festival.destroy
    render json: {message: "Festival Removed!"}
  end
end
