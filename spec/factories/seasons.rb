FactoryGirl.define do
  factory :season do
    name 'Fall 2015'
    start_at { Date.new(2015, 9, 1) }
    end_at { Date.new(2015, 12, 15) }

    trait :upcoming do
      start_at { 1.month.from_now }
      end_at { 2.months.from_now }
    end

    trait :current do
      start_at { 1.month.ago }
      end_at { 1.month.from_now }
    end

    trait :past do
      start_at { 2.months.ago }
      end_at { 1.month.ago }
    end
  end
end
