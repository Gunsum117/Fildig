class TagsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :index, :show, :update]

  def create
  end

  def index
  end

  def show
  end

  def update
  end
end
