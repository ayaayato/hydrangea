class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :nickname
          validates :birthday
          validates :coin
        end

   #validates :password,
                  #format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/, 
                  #messege: "requires the use of both numbers and alphabets"
                  #}

  has_many :flowers
  has_many :favos
  has_many :orders
  has_many :skins, through: :orders
  
  has_many :loves
  has_many :likings, through: :loves, source: :like
  has_many :reverse_of_loves, class_name: 'Love', foreign_key: 'like_id'
  has_many :likers, through: :reverse_of_loves, source: :user

  def like(other_user)
    unless self == other_user
      self.loves.find_or_create_by(like_id: other_user.id)
    end
  end

  def unlike(other_user)
    love = self.loves.find_by(like_id: other_user.id)
    love.destroy if love
  end

  def liking?(other_user)
    self.likings.include?(other_user)
  end
  

end
