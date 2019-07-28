class FilmsController < ApplicationController

  def index
    @films = Film.all
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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
