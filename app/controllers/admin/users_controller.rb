class Admin::UsersController < ApplicationController

  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:success] = "プロフィールを編集しました！"
      redirect_to admin_user_path(user)
    else
      flash[:warning] = "プロフィールの編集に失敗しました！"
      redirect_to edit_admin_user_path(user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def search
    @users = User.search(params[:search])
    render :search
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :image)
    end

end