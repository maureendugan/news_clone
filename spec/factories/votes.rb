# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    link_id 1
    user_id 1

    factory :vote_again do
      link factory: :test_link
    end
  end

  factory :vote_on_test_link, class: 'Vote' do
    link factory: :test_link
    user factory: :Kelly
  end

end
