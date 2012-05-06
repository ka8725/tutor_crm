# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject_category do
    name { Faker::Name.name }
  end
end
