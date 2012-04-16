# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :office do
    address { Faker::Address.address }
    subway
    line
  end
end
