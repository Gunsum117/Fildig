class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
  	@review = Review.new
  end

  def create
  	film = Film.find(params[:film_id])
  	review = current_user.reviews.new(review_params)
  	review.film_id = film.id
  	review.save
  	redirect_to film_path(film)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def review_params
        params.require(:review).permit(:title, :star, :body)
    end

end
