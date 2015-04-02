FactoryGirl.define do
  factory :statistic do
    type 'Goal'
    game_time { Time.new(1500) }
    game

    factory :goal do
    end

    factory :assist do
    end

    factory :penalty do
    end
  end
end
