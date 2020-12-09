class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.nickname
    @flowers = @user.flowers
    @find = Order.where(user_id: current_user.id)
    @names = Skin.all
  end

  #def create
    #@user = User.new(configure_sign_up_params)
    #session["devise.regist_data"] = {user: @user.attributes}
    #session["devise.regist_data"][:user]["password"] = params[:user][:password]
    #if @user.save
    #redirect_to root_path
    #end
   #end

  def edit
    @user = User.find(params[:id])
    @find = Order.where(user_id: current_user.id)
    @name = Skin.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
   if @user.save
      redirect_to user_path(@user.id)
   else
     render :edit
   end
  end

  def level
    user = User.find(params[:id])
    levels = Order.where(user_id: current_user.id)
    level = levels.count
    level_up = level + 1
    user.update(coin: level_up)
    if user.save
      redirect_to root_path
    end
  end

  def icon
    gon.icon = 1
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user.id)
   end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :birthday, :coin, :icon_ids)
  end

  #def configure_sign_up_params
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :password, :password_confirmation,:email,:icon_ids, :birthday])
  #end

end
