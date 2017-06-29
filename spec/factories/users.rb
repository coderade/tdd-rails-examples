FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@email.comm"}
    password 'secretsecret'
  end
end
