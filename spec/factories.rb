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
end
