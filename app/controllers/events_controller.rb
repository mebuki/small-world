class EventsController < ApplicationController
  before_action :event_index, only: [:search, :language, :culture, :hangout, :others]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :search_event, only: [:search]
  before_action :authenticate_user!, only: [:new, :edit]


  def search
    @results = @e.result.order("created_at DESC")
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

  def show
  end

  def edit
  end

  def update
    if  @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    if @event.destroy
      redirect_to events_path
    else
      rebder :show
    end
  end

  

  private

  def event_params
    params.require(:event).permit(:image, :purpose_id, :name, :event_date, :event_time, :place, :info).merge(user_id: current_user.id)
  end

  def event_index
    @events = Event.all.order("created_at DESC")
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def search_event
    @e = Event.ransack(params[:q])
  end
  
end
