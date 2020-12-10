class SkinsController < ApplicationController
  def show
    @skin = Skin.find(params[:id])
    send_data @skin.icon, option = {type: 'image/jpeg', disposition: 'inline'}
  end

  def preview
    @skins = Skin.find(params[:id])
  end

  def index
    @name = Skin.all
    @count = Skin.count
  end

  def buy
    
  end
end
