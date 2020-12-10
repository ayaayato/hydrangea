class Flower < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :subcategory
  has_one_attached :image
  belongs_to :user
  has_many :flower_tag_relations
  has_many :tags, through: :flower_tag_relations

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
