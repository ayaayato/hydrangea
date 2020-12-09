class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :find_skin, only:[:index, :create]

  def index
    @find = Order.find_by(user_id: current_user.id, skin_id: params[:skin_id])
    @order = Order.new
  end

  def create
    #binding.pry
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    end
  end

  private
  def find_skin
    @skins = Skin.find(params[:skin_id])
  end

  def order_params
    params.require(:order).permit(:user_id,:skin_id).merge(user_id: current_user.id, skin_id: params[:skin_id])
  end

end
