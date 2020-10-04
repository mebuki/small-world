class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      redirect_to events_path
    end
  end

  def show
    @users = User.all
    @events = current_user.events.order("created_at DESC")
    @like_events = current_user.like_events
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :country_id, :prefecture_id)
  end

end
