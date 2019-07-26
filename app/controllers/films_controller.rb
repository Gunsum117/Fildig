class FilmsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def index
    @films = Film.all
    if params[:tag_name]
      @films = @films.tagged_with("#{params[:tag_name]}")
    end
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
