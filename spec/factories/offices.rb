# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :office do
    address "MyString"
    subway_id 1
    line_id 1
  end
end
