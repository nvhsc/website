class Team < ActiveRecord::Base
  include Icon

  belongs_to :division
  belongs_to :season
  has_one :sport, through: :division

  validates_presence_of :name
  validates_presence_of :division
  validates_presence_of :season
end
