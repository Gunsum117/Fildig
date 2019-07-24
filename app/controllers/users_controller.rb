class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show, :edit, :update, :resign, :destroy, :follows, :followers]

  def show
    @user = User.find(params[:id])
    @wishes = Wish.where(user_id: @user.id)
    @dones = Done.where(user_id: @user.id)
    @mybests = Mybest.where(user_id: @user.id)
  end

  def edit
  end

  def update
  end

  def resign
  end

  def destroy
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

end
