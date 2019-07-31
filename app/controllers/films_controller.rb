class FilmsController < ApplicationController

  def index
    @films = Film.all.page(params[:page]).per(20)
    if user_signed_in?
      reviews_all = Review.all
      @users = current_user.followings
      @reviews = reviews_all.where(user_id: @users).limit(5).order("created_at DESC")
    else
      @reviews = Review.all.limit(5).order("created_at ASC")
    end
    # タグ検索
    if params[:tag_name]
      @films = @films.tagged_with("#{params[:tag_name]}")
    end
  end

  def search
    @films = Film.search(params[:search])
    render :search
  end

  def show
    @film = Film.find(params[:id])
    @reviews = Review.where(film_id: @film.id).order("created_at DESC").page(params[:page]).per(5)
    @top_reviews = Review.top_review
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
