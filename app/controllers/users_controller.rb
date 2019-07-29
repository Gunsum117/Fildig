class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show, :edit, :update, :resign, :destroy, :follows, :followers]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
    @wishes = Wish.where(user_id: @user.id)
    @dones = Done.where(user_id: @user.id)
    @mybests = Mybest.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:success] = "プロフィールを編集しました！"
      redirect_to user_path(user)
    else
      flash[:warning] = "プロフィールの編集に失敗しました！"
      redirect_to edit_user_path(user)
    end
  end

  def resign
  end

  def destroy
  end

  def follows
    @user = User.find(params[:id])
    @users = @user.followings
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :image)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to user_path(@user) unless @user == current_user
    end

end
