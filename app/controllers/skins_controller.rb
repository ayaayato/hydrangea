class SkinsController < ApplicationController
  def show
    @skin = Skin.where(id: current_user.icon_ids).first
  send_data @skin.icon, option = {type: 'image/jpeg', disposition: 'inline'}
  end
end
