class Tag < ApplicationRecord
  has_many :flower_tag_relations
  has_many :flowers, through: :flower_tag_relations

  validates :name, uniqueness: true
end
