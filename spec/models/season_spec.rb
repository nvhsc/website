require 'rails_helper'

RSpec.describe Season, :type => :model do
  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:status).of_type(:string) }
  it { is_expected.to have_db_column(:start_date).of_type(:date) }
  it { is_expected.to have_db_column(:end_date).of_type(:date) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  
  it 'has a valid factory' do
    expect(build(:season)).to be_valid
  end
end
