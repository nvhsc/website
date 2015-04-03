FactoryGirl.define do
  factory :roster do
  	role 'player'
    player
    team

    factory :goalie do
    	role 'goalie'
    end

    factory :coach do
    	role 'coach'
    end
  end
end
