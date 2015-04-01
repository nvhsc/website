require 'rails_helper'

RSpec.describe Events::Practice, :type => :model do
  it { is_expected.to belong_to(:home_team).class_name('Team').with_foreign_key(:home_team_id) }
  it { is_expected.to belong_to(:away_team).class_name('Team').with_foreign_key(:away_team_id) }
end
