class Season < ActiveRecord::Base
  include Temporal
  has_many :teams
  validates_presence_of :name
end
