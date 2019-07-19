class FilmsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

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
end
