FactoryGirl.define do
  # factory :fdsfdsfsd, class: Product do
  factory :user do
    username "A User"
    password "123"
    password_confirmation "123"
  end
  factory :workout do
    name "A Workout"
    association :user
  end
  factory :exercise do
    name "An Exercise"
    description "Here's how you do it."
    body_focus "back"
  end
end