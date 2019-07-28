class FilmsController < ApplicationController

  def index
    @films = Film.all
    if user_signed_in?
      @users = current_user.limit(5).followings.order("created_at DESC")
    else
      @users = User.all.limit(5).order("created_at ASC")
    end
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
