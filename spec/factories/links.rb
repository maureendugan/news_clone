# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    name "MyString"
    url "MyString"
    user_id 1
    post_time "2014-04-08 09:53:30"
    ranking 1
  end
end
