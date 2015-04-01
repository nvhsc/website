class Event < ActiveRecord::Base
  include Temporal
  TYPES = %w(Game Practice Tournament)
  validates_presence_of :name
  validates_inclusion_of :type, in: TYPES, allow_nil: true
end
