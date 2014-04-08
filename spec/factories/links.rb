# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    name "MyString"
    url "MyString"
    user_id 1
    post_time "2014-04-08 09:53:30"
    ranking 1

    factory :test_link do
      name "Hacker Link"
      url "http://www.google.com"
      ranking 4
    end
  end

  factory :new_link, class: 'Link' do
    name "Google"
    url "http:www.google.com"
    user factory: :Kelly
    ranking 2
  end


end
