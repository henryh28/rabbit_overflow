FactoryGirl.define do
  factory :user do
    username { "Guest" }
    password { "password"}
  end

  factory :question do
    title { "sample title" }
    content { "sample content" }
    author { "guest" }
  end

  factory :answer do
    content { "sample answer" }
  end
end
