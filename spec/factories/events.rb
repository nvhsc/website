FactoryGirl.define do
  factory :event do
    name 'Kickoff Party'
    start_at { Time.new(2015,4,5,3) }
    end_at { Time.new(2015,4,5,6) }

    factory :game do
      type 'Game'
    end

    factory :practice do
      type 'Practice'
    end

    factory :tournament do
      type 'Tournament'
    end
  end
end
