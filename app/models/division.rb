class Division < ActiveRecord::Base
  belongs_to :sport
  has_many :teams

  validates_presence_of :sport
  validates_presence_of :name
end
