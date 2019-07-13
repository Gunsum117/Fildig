class Admin::FilmsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  def new
    @film = Film.new
  end

  def create
    @film = current_user.films.build(films_params)
    tag_list = params[:tag_list].split(",")
    if @film.save
      @film.save_tags(tag_list)
      flash[:success] = "映画を作成しました"
      redirect_to articles_url
    else
      render 'tags/new'
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def film_params
      params.require(:film).permit(:title, :based, :release, :time, :language, :perfomer_list, :staff_list, :genre_list,)
  end

end
