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
    @review = Review.find(params[:film_id])
    if @review.destroy
       flash[:success] = '"' + @review.title + '"を削除しました'
       redirect_to film_path(@review.film_id)
    else
       flash[:warning] = "削除に失敗しました"
       redirect_to film_path(@review.film_id)
    end
  end

  private
    def review_params
        params.require(:review).permit(:title, :star, :body)
    end

end
