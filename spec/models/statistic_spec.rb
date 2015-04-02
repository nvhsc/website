require 'rails_helper'

RSpec.describe Statistic, :type => :model do
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:penalty_name).of_type(:string) }
  it { is_expected.to have_db_column(:penalty_duration).of_type(:time) }
  it { is_expected.to have_db_column(:game_time).of_type(:time) }
  it { is_expected.to have_db_column(:type).of_type(:string) }
  it { is_expected.to have_db_column(:pickup).of_type(:boolean) }
  it { is_expected.to have_db_column(:game_id).of_type(:integer) }

  it { is_expected.to validate_presence_of(:game) }
  it { is_expected.to validate_presence_of(:game_time) }
  it { is_expected.to validate_inclusion_of(:type).in_array(%w(Goal Assist Penalty)) }
  
  it 'has a valid factory' do
    expect(build(:statistic)).to be_valid
  end
end
