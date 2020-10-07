class LikesController < ApplicationController
  before_action :set_event


  def create
    like = current_user.likes.new(event_id: @event.id)
    like.save
  end

  def destroy
    like = current_user.likes.find_by(event_id: @event.id)
    like.destroy
  end


  private

  def set_event
    @event = Event.find(params[:event_id])
    @id_name = "#like-link-#{@event.id}"
  end

end
