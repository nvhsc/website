class Event < ActiveRecord::Base
  include Temporal
  TYPES = %w(game practice tournament party)
  validates_presence_of :name
  validates_inclusion_of :event_type, in: TYPES
end
