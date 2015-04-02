require 'rails_helper'

RSpec.describe Statistics::Assist, :type => :model do
  it { expect(described_class::POINTS).to eq 1 }
end
