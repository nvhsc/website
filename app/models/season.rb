class Season < ActiveRecord::Base
  include Temporal
  belongs_to :sport
  has_many :teams
  validates_presence_of :name
end
