class GoodReviewsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :destroy]

  def create
	@review = Review.find_by(id: params[:review_id])
	good_review = current_user.good_reviews.new(review_id: @review.id)
	good_review.save
	redirect_to film_path(@review.film_id)
  end

  def destroy
	@review = Review.find_by(id: params[:review_id])
	good_review = current_user.good_reviews.find_by(review_id: @review.id)
	good_review.destroy
	redirect_to film_path(@review.film_id)
  end
end
