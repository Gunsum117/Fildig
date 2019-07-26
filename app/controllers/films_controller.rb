class FilmsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def index
    @films = Film.all
    @users = current_user.followings.order("created_at DESC")
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
