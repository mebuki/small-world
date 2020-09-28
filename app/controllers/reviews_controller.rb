class ReviewsController < ApplicationController
  
  def create
    review = Review.create(review_params)
    redirect_to "/tweets/#{review.tweet.id}"
  end

  private

  def review_params
    params.require(:review).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

end
