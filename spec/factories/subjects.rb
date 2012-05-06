# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    name { Faker::Name.name }
    show_on_the_site false
  end
end
