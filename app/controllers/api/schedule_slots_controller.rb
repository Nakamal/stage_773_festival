class Api::ScheduleSlotsController < ApplicationController
  def index
    @schedule_slots = ScheduleSlot.all

    render 'index.json.jbuilder'
  end

  def create
    render 'show.json.jbuilder'
  end

  def show
    @schedule_slot = ScheduleSlot.find(params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @schedule_slot = ScheduleSlot.find(params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @schedule_slot = ScheduleSlot.find(params[:id])
    
    render json: {message: "Successfully Destroyed!"}
  end
end
