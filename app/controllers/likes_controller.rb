class LikesController < ApplicationController
  before_action :set_event


  def create
    like = current_user.likes.build(event_id: params[:event_id])
    like.save
  end

  def destroy
    like = Like.find_by(event_id: params[:event_id], user_id: current_user.id)
    like.destroy
  end


  private

  def set_event
    @event = Event.find(params[:event_id])
    @id_name = "#like-link-#{@event.id}"
  end

end
