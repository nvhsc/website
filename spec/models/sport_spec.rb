require 'rails_helper'

RSpec.describe Sport, :type => :model do
  it_behaves_like 'an icon concern'
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:text) }

  it { is_expected.to have_many(:divisions) }
  it { is_expected.to have_many(:seasons) }
  it { is_expected.to have_many(:teams).through(:divisions) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }

  it 'has a valid factory' do
    expect(build(:sport)).to be_valid
  end
end
