class FlowersTag

  include ActiveModel::Model
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor :title, :place, :image, :category_id, :subcategory_id, :user_id, :name

  with_options presence: true do
    validates :category_id
    validates :subcategory_id
    validates :image
    validates :title, length: {maximum: 15}
    validates :name
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :subcategory_id
  end

  def save
    flower = Flower.create(title: title, place: place, image: image, category_id: category_id, subcategory_id: subcategory_id, user_id: user_id)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    FlowerTagRelation.create(flower_id: flower.id, tag_id: tag.id)
  end

end