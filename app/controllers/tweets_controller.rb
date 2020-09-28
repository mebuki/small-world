class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path
    else
      render :edit
    end
  end

  def destroy
    if @tweet.destroy
      redirect_to tweets_path
    else
      render :show
    end
  end


  private

  def tweet_params
    params.require(:tweet).permit(images: [], :text).merge(user_id: current_user.id, event_id: params[:event_id])
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end


end