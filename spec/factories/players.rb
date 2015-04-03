FactoryGirl.define do
  factory :player do
    first_name 'Cody'
    last_name 'Wackerman'
    birthdate { Date.new(1990, 8, 12) }
    gender 'male'
  end
end
