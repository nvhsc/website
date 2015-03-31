FactoryGirl.define do
  factory :season do
    name 'Fall 2015'
    start_date { Date.new(2015, 9, 1) }
    end_date { Date.new(2015, 12, 15) }
  end
end
