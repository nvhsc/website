class Statistic < ActiveRecord::Base
  TYPES = %w(Goal Assist Penalty)
  POINTS = 0
  belongs_to :game, class_name: 'Event'
  validates_presence_of :game
  validates_presence_of :game_time
  validates_inclusion_of :type, in: TYPES
end
