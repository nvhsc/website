require 'rails_helper'

RSpec.describe Sport, :type => :model do
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to have_db_column(:description) }
  it { is_expected.to have_db_column(:icon_file_name).of_type(:string) }
  it { is_expected.to have_db_column(:icon_content_type).of_type(:string) }
  it { is_expected.to have_db_column(:icon_file_size).of_type(:integer) }
  it { is_expected.to have_db_column(:icon_updated_at).of_type(:datetime) }
  it { is_expected.to have_many(:divisions) }
  it { is_expected.to have_attached_file(:icon) }
  it { is_expected.to validate_attachment_presence(:icon) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it 'has a valid factory' do
    expect(build(:sport)).to be_valid
  end
end
