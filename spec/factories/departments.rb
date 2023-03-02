require 'faker'
FactoryBot.define do
  factory :department do
    name { Faker::IndustrySegments.sector }
    manager { create(:employee) }
  end
end
