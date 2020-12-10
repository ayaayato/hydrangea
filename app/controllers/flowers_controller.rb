class FlowersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :create, :destroy]
  before_action :find_flower, only: [:show, :edit, :update, :destroy]
  before_action :exile_to_index, only: [:edit, :destroy]

def index
  @flowers = Flower.all.order("created_at DESC")
  @flower = FlowersTag.new
  respond_to do |format|
    format.html
  end
end

def new #不用の為、最後に消す
  @flower = Flower.new
end

def create
  @flower = FlowersTag.new(flower_params)
 if @flower.save
  #redirect_to controller: 'users', action: 'level', id: current_user.id
  redirect_to root_path
 else
 redirect_to root_path
 end
end

def show
end

def ajax
  return nil if params[:keyword] == ""
  tag = Tag.where(['name LIKE ?', "%#{params[:keyword]}%"] )
  render json:{ keyword: tag }
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
  params.require(:flowers_tag).permit(:title, :place, :image, :category_id, :subcategory_id, :name).merge(user_id: current_user.id)
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
