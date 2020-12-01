class FlowersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :create, :destroy]
  before_action :find_flower, only: [:show, :edit, :update, :destroy]
  before_action :exile_to_index, only: [:edit, :destroy]

def index
  @flowers = Flower.all.order("created_at DESC")
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

def show
end

def edit
end

def update
  @flower.update(flower_params)
if @flower.save
   redirect_to flower_path(@flower.id)
else
 render :edit
end
end

def destroy
  @flower.destroy
  redirect_to root_path
end

private

def flower_params
  params.require(:flower).permit(:title, :place, :image, :category_id, :subcategory_id).merge(user_id: current_user.id)
end

def find_flower
  @flower = Flower.find(params[:id])
end

def exile_to_index
  @flower = Flower.find_by(id:params[:id])
   unless @flower.user_id == current_user.id
     redirect_to action: :index
   end
end

end
