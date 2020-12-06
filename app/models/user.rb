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
  belongs_to :skin

  

end
