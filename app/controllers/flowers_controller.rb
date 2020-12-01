class FlowersController < ApplicationController

def index
end

def new
  @flower = Flower.new
end

def create
  @flower = Flower.new(flower_params)
 if @flower.save
  redirect_to root_path
 else
 render :new
 end
end

private

def flower_params
  params.require(:flower).permit(:title, :place, :image, :category_id, :subcategory_id).merge(user_id: current_user.id)
end

end
