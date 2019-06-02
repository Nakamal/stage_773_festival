class Api::ScheduleSlotsController < ApplicationController
  def index
    @schedule_slots = ScheduleSlot.all

    render 'index.json.jbuilder'
  end

  def create
    if current_person && current_person.admin
      
      @schedule_slot = ScheduleSlot.new(
                            main_eventable_id: params[:main_eventable_id],
                            main_eventable_type: params[:main_eventable_type],
                            start_time: params[:start_time],
                            end_time: params[:end_time],
                            venue: params[:venue],
                            other_location: params[:other_location]
                            )
      if @schedule_slot.save 
        render 'show.json.jbuilder'   
      else
        render json: { errors: @schedule_slot.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @schedule_slot = ScheduleSlot.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @schedule_slot = ScheduleSlot.find(params[:id])

    @schedule_slot.main_eventable_id = params[:main_eventable_id] || @schedule_slot.main_eventable_id
    @schedule_slot.main_eventable_type = params[:main_eventable_type] || @schedule_slot.main_eventable_type
    @schedule_slot.start_time = params[:start_time] || @schedule_slot.start_time
    @schedule_slot.end_time = params[:end_time] || @schedule_slot.end_time
    @schedule_slot.venue = params[:venue] || @schedule_slot.venue
    @schedule_slot.other_location = params[:other_location] || @schedule_slot.other_location

    if @schedule_slot.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @schedule_slot.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @schedule_slot = ScheduleSlot.find(params[:id])
    @schedule_slot.destroy
    render json: {message: "Slot Removed"}
  end
end
