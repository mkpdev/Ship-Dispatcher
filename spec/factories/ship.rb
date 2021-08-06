require 'faker'

FactoryBot.define do
  factory :ship do
    name { Faker::Team.name }
    origin { Faker::Address.country }
    passengers { Faker::Number.between(from: 10, to: 50) }
    status { :arrived }
  end
end