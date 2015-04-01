require 'rails_helper'

RSpec.describe Events::Tournament, :type => :model do
  it { is_expected.to have_many(:games) }
end
