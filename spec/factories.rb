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

  factory :move do
    name "penkki"
    description "pena"
  end

  factory :result do
    weight 10
    reps 10
  end

  factory :result2 do
    weight 10
    reps 10
  end
end
