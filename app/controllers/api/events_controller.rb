class Api::EventsController < ApplicationController
  def index
    @events = Event.all

    render 'index.json.jbuilder'
  end

  def create
    if current_user && current_user.admin
      
      @event = Event.new(
                            show: params[:show],
                            name: params[:name],
                            description: params[:description],
                            rating: params[:rating],
                            video_link: params[:video_link],
                            festival_id: params[:festival_id]
                            )
      if @event.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @event = Event.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @event = Event.find(params[:id])

    @event.show = params[:show] || @event.show
    @event.name = params[:name] || @event.name
    @event.description = params[:description] || @event.description
    @event.rating = params[:rating] || @event.rating
    @event.video_link = params[:video_link] || @event.video_link
    @event.festival_id = params[:festival_id] || @event.festival_id

    if @event.save
      render "show.json.jbuilder"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: {message: "Event Deleted"}
  end
end
