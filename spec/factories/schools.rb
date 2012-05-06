# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
    name { Faker::Company.name }
    show_on_the_site false
  end
end
