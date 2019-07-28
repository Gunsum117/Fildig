class MybestsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :destroy]

  def create
	@film = Film.find(params[:film_id])
	mybest = current_user.mybests.new(film_id: @film.id)
	mybest.save
  end

  def destroy
	@film = Film.find(params[:film_id])
	mybest = current_user.mybests.find_by(film_id: @film.id)
	mybest.destroy
  end

end
