class UsersController < ApplicationController

  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]

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
