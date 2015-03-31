require 'rails_helper'

RSpec.describe Season, :type => :model do
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:start_date).of_type(:date) }
  it { is_expected.to have_db_column(:end_date).of_type(:date) }

  it { is_expected.to have_many :teams }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }

  describe '#end_date_after_start_date' do
    subject(:season) { build(:season, start_date: Date.today) }
    let(:error) { 'must be greater than start date' }
    it { is_expected.to allow_value(Date.tomorrow).for(:end_date) }
    it { is_expected.not_to allow_value(Date.yesterday).for(:end_date).with_message(error) }
  end
  
  it 'has a valid factory' do
    expect(build(:season)).to be_valid
  end

  describe '#status' do
    context 'upcoming season' do
      subject(:season) { build(:season, :upcoming) }
      it { expect(season.status).to eq :upcoming }
    end

    context 'current season' do
      subject(:season) { build(:season, :current) }
      it { expect(season.status).to eq :current }
    end

    context 'past season' do
      subject(:season) { build(:season, :past) }
      it { expect(season.status).to eq :past }
    end
  end
end
