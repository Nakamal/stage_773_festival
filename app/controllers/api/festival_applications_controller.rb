class Api::FestivalApplicationsController < ApplicationController
  def index
    @festival_applications = FestivalApplication.all

    render 'index.json.jbuilder'
  end

  def create
    if current_person && current_person.admin
      
      @festival_application = FestivalApplication.new(
                            confirmation_code: params[:confirmation_code],
                            group_name: params[:group_name],
                            facebook: params[:facebook],
                            twitter: params[:twitter],
                            rating: params[:rating],
                            person_id: params[:person_id],
                            festival_id: params[:festival_id],
                            phone: params[:phone],
                            email: params[:email],
                            address: params[:address],
                            city: params[:city],
                            state: params[:state],
                            zip: params[:zip],
                            second_contact_name: params[:second_contact_name],
                            second_email: params[:second_email],
                            second_phone: params[:second_phone],
                            group_website: params[:group_website],
                            promo_summary: params[:promo_summary],
                            schedule_requirements: params[:schedule_requirements],
                            tech_requirements: params[:tech_requirements],
                            judge_video_link: params[:judge_video_link],
                            promo_video_link: params[:promo_video_link]
                            )
      if @festival_application.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @festival_application.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @festival_application = FestivalApplication.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @festival_application = FestivalApplication.find(params[:id])

    @festival_application.confirmation_code = params[:confirmation_code] || @festival_application.confirmation_code
    @festival_application.group_name = params[:group_name] || @festival_application.group_name
    @festival_application.facebook = params[:facebook] || @festival_application.facebook
    @festival_application.twitter = params[:twitter] || @festival_application.twitter
    @festival_application.rating = params[:rating] || @festival_application.rating
    @festival_application.person_id = params[:person_id] || @festival_application.person_id
    @festival_application.festival_id = params[:festival_id] || @festival_application.festival_id
    @festival_application.phone = params[:phone] || @festival_application.phone
    @festival_application.email = params[:email] || @festival_application.email
    @festival_application.address = params[:address] || @festival_application.address
    @festival_application.city = params[:city] || @festival_application.city
    @festival_application.state = params[:state] || @festival_application.state
    @festival_application.zip = params[:zip] || @festival_application.zip
    @festival_application.second_contact_name = params[:second_contact_name] || @festival_application.second_contact_name
    @festival_application.second_email = params[:second_email] || @festival_application.second_email
    @festival_application.second_phone = params[:second_phone] || @festival_application.second_phone
    @festival_application.group_website = params[:group_website] || @festival_application.group_website
    @festival_application.promo_summary = params[:promo_summary] || @festival_application.promo_summary
    @festival_application.schedule_requirements = params[:schedule_requirements] || @festival_application.schedule_requirements
    @festival_application.tech_requirements = params[:tech_requirements] || @festival_application.tech_requirements
    @festival_application.judge_video_link = params[:judge_video_link] || @festival_application.judge_video_link
    @festival_application.promo_video_link = params[:promo_video_link] || @festival_application.promo_video_link

    if @festival_application.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @festival_application.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @festival_application = FestivalApplication.find(params[:id])
    @festival_application.destroy
    render json: {message: "Application Deleted"}
  end
end
