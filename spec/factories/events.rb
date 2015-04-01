FactoryGirl.define do
  factory :event do
    name 'Kickoff Party'
    event_type 'party'
    start_at { Time.new(2015,4,5,3) }
    end_at { Time.new(2015,4,5,6) }

    trait :game do
    end

    trait :practice do
    end

    trait :tournament do
    end

    trait :party do
    end
  end
end
