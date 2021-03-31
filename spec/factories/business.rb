FactoryBot.define do
  factory :business do
    name { Faker::Movies::LordOfTheRings.location }
    rank  { Faker::Number.number(digits: 2) }
    big_company { false }
  end
end
