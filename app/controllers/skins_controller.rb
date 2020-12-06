class SkinsController < ApplicationController
  def show
    @skin = Skin.where(id: 1).first
  send_data @skin.icon, option = {type: 'image/jpeg', disposition: 'inline'}
  end
end
