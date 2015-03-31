require 'rails_helper'

RSpec.describe Division, :type => :model do
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:sport_id).of_type(:integer) }

  it { is_expected.to belong_to(:sport) }
  it { is_expected.to have_many(:teams) }

  it { is_expected.to validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:division)).to be_valid
  end
end
