# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
  end

  factory :Kelly, class: 'User' do
    name "Kelly"
  end
end
