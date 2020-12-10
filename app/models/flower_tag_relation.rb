class FlowerTagRelation < ApplicationRecord
  belongs_to :flower
  belongs_to :tag
end
