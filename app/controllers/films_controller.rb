class FilmsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def index
    @films = Film.all
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
