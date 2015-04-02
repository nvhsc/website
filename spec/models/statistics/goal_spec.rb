require 'rails_helper'

RSpec.describe Statistics::Goal, :type => :model do
  it { expect(described_class::POINTS).to eq 2 }
end
