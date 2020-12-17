class LovesController < ApplicationController
  before_action :set_user

  def create
    liking = current_user.like(@user)
    if liking.save
      flash[:success] = "ラブ！"
      redirect_to @user
    else
      redirect_to @user
    end
  end

  def destroy
    liking = current_user.unlike(@user)
    if liking.destroy
      flash[:success] = "さようなら・・・"
      redirect_to @user
    else
      redirect_to @user
    end
  end

  private
  def set_user
    @user = User.find(params[:like_id])
  end

end
