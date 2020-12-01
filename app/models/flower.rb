class Flower < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :subcategory
  has_one_attached :image
  belongs_to :user

  with_options presence: true do
    validates :category_id
    validates :subcategory_id
    validates :image
    validates :title, length: {maximum: 15}
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :subcategory_id
  end


end
