class DonesController < ApplicationController

  before_action :authenticate_user!, only: [:create, :destroy]

  def create
	@film = Film.find(params[:film_id])
	done = current_user.dones.new(film_id: @film.id)
	done.save
  end

  def destroy
	@film = Film.find(params[:film_id])
	done = current_user.dones.find_by(film_id: @film.id)
	done.destroy
  end

end
