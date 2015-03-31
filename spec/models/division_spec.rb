require 'rails_helper'

RSpec.describe Division, :type => :model do
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to belong_to(:sport) }
  it { is_expected.to validate_presence_of(:name) }
  it 'has a valid factory' do
    expect(build(:division)).to be_valid
  end
end
