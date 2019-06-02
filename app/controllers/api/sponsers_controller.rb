class Api::SponsersController < ApplicationController
  def index
    @sponsers = Sponser.all
    
    render 'index.json.jbuilder'
  end

  def create
    if current_user && current_user.admin
      
      @sponser = Sponser.new(
                            name: params[:name],
                            website_link: params[:website_link],
                            video_link: params[:video_link],
                            foundation: params[:foundation]
                            )
      if @sponser.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @sponser.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @sponser = Sponser.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @sponser = Sponser.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.website_link = params[:website_link] || @product.website_link
    @product.video_link = params[:video_link] || @product.video_link
    @product.foundation = params[:foundation] || @product.foundation

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @sponser = Sponser.find(params[:id])
    @sponser.destroy
    render json: {message: "Sponser Removed"}
  end
end
