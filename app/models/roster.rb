class Roster < ActiveRecord::Base
	belongs_to :team
	belongs_to :player
	validates_presence_of :role, :team, :player
	validates_inclusion_of :role, in: %w{coach goalie player}
end
