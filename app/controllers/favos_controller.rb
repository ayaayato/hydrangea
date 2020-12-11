class FavosController < ApplicationController

  def create
    @flower = Flower.find(params[:flower_id])
    if @flower.user_id != current_user.id   # 自分の投稿以外にお気に入り登録が可能
      @favo = Favo.create(user_id: current_user.id, flower_id: @flower.id)
    end
  end 

  def destroy
    @flower = Flower.find(params[:flower_id])
    @favo = Favo.find_by(user_id: current_user.id, flower_id: @flower.id)
    @favo.destroy
  end

end
