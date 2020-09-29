class UsersController < ApplicationController

  def show
    @users = User.all
    @events = current_user.events
    @like_events = current_user.like_events
  end

end
