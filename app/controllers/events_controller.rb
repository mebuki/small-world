class EventsController < ApplicationController
  before_action :event_index, only: [:language, :culture, :hangout, :others]
  
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

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  
    @event = Event.find(params[:id])
    if  @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(:purpose_id, :name, :year_id, :month_id, :day_id, :place, :info, :user_id).merge(user_id: current_user.id)
  end

  def event_index
    @events = Event.all.order("created_at DESC")
  end
  
end
