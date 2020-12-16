class FlowersController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create, :edit, :create, :destroy]
  before_action :find_flower, only: [:edit,:show, :update, :destroy]
  before_action :exile_to_index, only: [:edit, :destroy]

def index
  if user_signed_in?
  levels = Flower.where(user_id: current_user.id)
  level = levels.count
  @level = level + 1

  if Love.find_by(user_id: current_user.id) != nil
  loves = Love.find_by(user_id: current_user.id)
  like = loves.like_id
  user = User.where(id: like)
  flowers = Flower.where(user_id: user).or(Flower.where(user_id: current_user.id))
  @flowers = flowers.order("created_at DESC").includes(:user).limit(100)

  #@flowers = Flower.all.order("created_at DESC")
  elsif Flower.find_by(user_id: current_user.id) != nil
   flowers = Flower.where(user_id: current_user.id)
   @flowers = flowers.order("created_at DESC").includes(:user).limit(100)
  end
  @flower = FlowersTag.new
  end
 

  @f = Flower.ransack(params[:q])

  
  #respond_to do |format|
    #format.html
  #end
end

def new #不用の為、最後に消す
  @flower = Flower.new
end

def create
  @flower = FlowersTag.new(flowers_params)
 if @flower.save
  #redirect_to controller: 'users', action: 'level', id: current_user.id
  flash[:success] = "投稿しました"
  redirect_to root_path
 else
  flash[:danger] = "投稿できませんでした"
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
  @flower = Flower.find(params[:id])
  #@tag = FlowersTag.new(flower: @flower)
  #flower_id = flower.id
  #tag_id = FlowerTagRelation.find_by(flower_id: flower_id)
  #tag = Tag.find_by(id: tag_id)
  #name = tag.name
  #@flower = FlowerTagRelation.find_by(flower_id: flower_id).flower
  #@tags = FlowerTagRelation.find_by(flower_id: flower_id).tag
end

def update
   @flower.update(flower_params)
   #@tag = FlowersTag.new(flower_params, flower: @flower)
   #tag_list = params[:flower][:name].split(",")
    #if @tag.valid?
      #@tag.save(tag_list)
      #return redirect_to flower_path(@flower.id)
    #else
     # render :edit
    #end
#   if @flower.save
  redirect_to root_path
#else
# render :edit
#end
end

def destroy
  @flower = Flower.find(params[:id])
    if @flower.destroy
      redirect_to root_path
    end
  #@flower = Flower.find(params[:id])
  #@flower.destroy
  #redirect_to root_path
end

def search
  @f = Flower.ransack(params[:q])
  @results = @f.result
end

def arrival
  @flowers = Flower.all.order("created_at DESC").includes(:user).limit(100)
end

private

def flower_params
  params.require(:flower).permit(:title, :place, :image, :category_id, :subcategory_id).merge(user_id: current_user.id)
end

def flowers_params
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
