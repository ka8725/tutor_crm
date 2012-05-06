# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_type do
    name { Faker::Company.name }
  end
end
