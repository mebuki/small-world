class EventsController < ApplicationController

  def index
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end


  private

  def event_params
    params.require(:event).permit(:purpose_id, :name, :year_id, :month_id, :day_id, :place, :info).merge(user_id: current_user.id)
  end
  
end
