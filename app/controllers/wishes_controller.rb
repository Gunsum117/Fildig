class WishesController < ApplicationController

  before_action :authenticate_user!, only: [:create, :destroy]

  def create
	film = Film.find(params[:film_id])
	wish = current_user.wishes.new(film_id: film.id)
	wish.save
	redirect_to film_path(film)
  end

  def destroy
	film = Film.find(params[:film_id])
	wish = current_user.wishes.find_by(film_id: film.id)
	wish.destroy
	redirect_to film_path(film)
  end

end
