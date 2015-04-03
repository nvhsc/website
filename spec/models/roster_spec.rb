require 'rails_helper'

RSpec.describe Roster, :type => :model do
  it { is_expected.to validate_presence_of :role }
	it { is_expected.to validate_presence_of :team }
	it { is_expected.to validate_presence_of :player }
	it { is_expected.to validate_inclusion_of(:role).in_array %w{coach goalie player} }
  it { is_expected.to belong_to :team }
  it { is_expected.to belong_to :player }

  describe 'factory' do
	  subject { build :roster }
	  it { is_expected.to be_valid }
	end
end
