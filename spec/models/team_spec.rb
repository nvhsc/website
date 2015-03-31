require 'rails_helper'

RSpec.describe Team, :type => :model do
  it_behaves_like 'an icon concern'
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:division_id).of_type(:integer) }
  it { is_expected.to have_db_column(:season_id).of_type(:integer) }
  
  it { is_expected.to belong_to(:season) }
  it { is_expected.to belong_to(:division) }
  it { is_expected.to have_one(:sport).through(:division) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:division) }
  it { is_expected.to validate_presence_of(:season) }
  
  it 'has a valid factory' do
    expect(build(:team)).to be_valid
  end
end
