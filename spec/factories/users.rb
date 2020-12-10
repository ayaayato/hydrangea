FactoryBot.define do
  factory :user do

        nickname              {"りき1964"}
        email                 {Faker::Internet.free_email}
        password              {"konbanwa1"}
        password_confirmation {password}
        coin                  {1}
        icon_ids              {1}
        birthday              {"1964-01-04"}
        
  end
end
