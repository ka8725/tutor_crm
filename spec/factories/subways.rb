# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subway do
    name { Faker::Company.name }
    line
  end
end
