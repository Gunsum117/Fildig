class ReviewsController < ApplicationController

  before_action :authenticate_admin!, only: [:edit, :update, :destroy]

  def edit
  end

  def update
  end

  def destroy
  end
end
