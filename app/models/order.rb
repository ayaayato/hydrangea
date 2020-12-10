class Order < ApplicationRecord
  
  belongs_to :user
  belongs_to :skin

  #attr_accessor :item_id, :user_id
  #def save
   # @order = Order.create(item_id: item_id, user_id: user_id)
  #end
end
