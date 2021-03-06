# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name { Faker::Name.name }
    url { Faker::Internet.url }
    project_type
    country
    city
  end
end
