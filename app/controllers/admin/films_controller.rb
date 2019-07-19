class Admin::FilmsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      flash[:success] = "映画を作成しました"
      redirect_to new_admin_film_path
    else flash[:warning] = "映画を作成できませんでした"
         redirect_to new_admin_film_path
    end
  end

  def index
    @films = Film.all
  end

  def show
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update(film_params)
       flash[:success] = '"' + @film.title + '"を編集しました'
       redirect_to admin_films_path
    else
       flash[:warning] = "編集に失敗しました"
       redirect_to admin_films_path
    end
  end

  def destroy
    @film = Film.find(params[:id])
    if @film.destroy
       flash[:success] = '"' + @film.title + '"を削除しました'
       redirect_to admin_films_path
    else
       flash[:warning] = "削除に失敗しました"
       redirect_to admin_films_path
    end
  end

  private
  def film_params
      params.require(:film).permit(:title, :image, :based, :release, :time, :language, :performer_list, :staff_list, :genre_list)
  end

end
