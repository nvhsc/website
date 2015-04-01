require 'rails_helper'

RSpec.describe Season, :type => :model do
  it_behaves_like 'a timestamped model'
  it_behaves_like 'a time-based model'

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_many :teams }
  it { is_expected.to validate_presence_of(:name) }
  
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
