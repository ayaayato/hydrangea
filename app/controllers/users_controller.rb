class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.nickname
    @flowers = @user.flowers
    @find = Order.where(user_id: current_user.id)
    @names = Skin.all
    @flowers = Flower.where(user_id: @user.id).order("created_at DESC")
  end

  def edit
    @user = User.find(params[:id])
    @find = Order.where(user_id: current_user.id)
    @name = Skin.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
   if @user.save
    flash[:success] = "変更しました"
      redirect_to user_path(@user.id)
   else
     render :edit
   end
  end

  def level
    user = User.find(params[:id])
    levels = Flower.where(user_id: current_user.id)
    level = levels.count
    level_up = level + 1
    user.update(coin: level_up)
    if user.save
      flash[:success] = "レベルが上がりました"
      redirect_to root_path
    end
  end

  def icon
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:success] = "変更しました"
      redirect_to user_path(@user.id)
   end
  end

  def favorite
    favos = Favo.where(user_id: current_user.id).order(created_at: :desc).pluck(:flower_id)
    @favos = Flower.find(favos)
  end

  def lover
    loves = Love.where(user_id: current_user.id).order(created_at: :desc).pluck(:like_id)
    @loves = User.find(loves)
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :birthday, :coin, :icon_ids)
  end

end
