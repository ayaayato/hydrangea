FactoryBot.define do
  factory :order do
    user_id              {1}
    skin_id              {1}
    association :user
    association :skin
  end
end
