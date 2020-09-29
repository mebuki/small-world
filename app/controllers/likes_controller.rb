class LikesController < ApplicationController

  def create
    like = current_user.likes.new(event_id: params[:event_id])
    like.save
    redirect_to events_path
  end

  def destroy
    like = Like.find_by(event_id: params[:event_id], user_id: current_user.id)
    like.destroy
    redirect_to events_path
  end

end
