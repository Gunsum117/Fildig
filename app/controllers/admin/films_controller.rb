class Admin::FilmsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  def new
  end

  def create
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

end
