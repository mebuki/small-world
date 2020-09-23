class EventsController < ApplicationController

  def index
  end
  
  def new
    @event = Event.new
  end

  def create
    binding.pry
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end


  private

  def event_params
    params.require(:event).permit(:purpose_id, :name, :place, :time, :info, user_ids:[])
  end
end
