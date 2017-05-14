FactoryGirl.define do
  factory :user do
    username "Pekka"
    password "Foobar1"
    password_confirmation "Foobar1"
  end

  factory :gym do
    name "Fit24"
    founded 2017
    address "osoite"
  end

  factory :m do
    gym_id 1
    user_id 1
  end
end
