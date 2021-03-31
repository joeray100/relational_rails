FactoryBot.define do
  factory :employee do
    name { Faker::Games::Pokemon.name }
    hours_worked  { Faker::Number.number(digits: 2) }
    likes_job { [false, true].sample }
    association :business, factory: :business
  end
end
