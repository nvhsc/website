require 'rails_helper'

RSpec.describe Player, :type => :model do
    it { is_expected.to validate_inclusion_of(:gender).in_array %w{male female} }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to allow_value(Time.current, Time.current.yesterday).for :birthdate }
    it { is_expected.to_not allow_value(Time.current.tomorrow).for(:birthdate).with_message('Must be in the past') }
    it { is_expected.to have_many(:teams).through(:rosters) }

    describe 'factory' do
  	  subject { build :player }
  	  it { is_expected.to be_valid }
  	end

    describe '#name' do
    	context 'only first + last' do
    		subject(:player) { build :player }
    		it { expect(player.name).to eq 'Cody Wackerman'}
    	end

    	context 'with middle name' do
    		subject(:player) { build :player, middle_name: 'James' }
    		it { expect(player.name).to eq 'Cody James Wackerman' }
    	end
    end

    describe '#age' do
    	context 'birthday today' do
    		subject(:player) { build :player, birthdate: 24.years.ago }
    		it { expect(player.age).to eq 24 }
    	end

    	context 'birthday has passed' do
    		subject(:player) { build :player, birthdate: 24.years.ago.yesterday }
    		it { expect(player.age).to eq 24 }
    	end

    	context 'birthday yet to pass' do
    		subject(:player) { build :player, birthdate: 24.years.ago.tomorrow }
    		it { expect(player.age).to eq 23 }
    	end
    end

end
