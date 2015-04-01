require 'rails_helper'

RSpec.describe Event, :type => :model do
  it_behaves_like 'a timestamped model'
  it_behaves_like 'a time-based model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:type).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:text) }
  it { is_expected.to have_db_column(:start_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:end_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:home_team_id).of_type(:integer) }
  it { is_expected.to have_db_column(:away_team_id).of_type(:integer) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:start_at) }
  it { is_expected.to validate_presence_of(:end_at) }
  it { is_expected.to validate_inclusion_of(:type).in_array(%w(Game Practice Tournament)).allow_nil }
  
  it 'has a valid factory' do
    expect(build(:event)).to be_valid
  end
end
