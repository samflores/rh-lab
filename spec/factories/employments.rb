require 'faker'
FactoryBot.define do
  factory :employment do
    registration { Faker::Number.number(digits: 6) }
    salary { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    starts_on { Faker::Date.in_date_period }
    ends_on { Faker::Date.between_except(to: 1.month.from_now, excepted: starts_on) }
    employee { create(:employee) }
    department { create(:department) }
    position { create(:position) }
  end
end
