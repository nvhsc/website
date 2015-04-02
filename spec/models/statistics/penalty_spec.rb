require 'rails_helper'

RSpec.describe Statistics::Penalty, :type => :model do
  it { expect(described_class::POINTS).to eq 0 }
end
