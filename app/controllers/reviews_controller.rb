class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
  	@review = Review.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
