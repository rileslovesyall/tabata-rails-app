FactoryGirl.define do
  # factory :fdsfdsfsd, class: Product do
  factory :workout do
    name "A Workout"
    user_id 1
  end
  factory :exercise do
    name "An Exercise"
    description "Here's how you do it."
    body_focus "back"
  end
end