class Season < ActiveRecord::Base
  has_many :teams
  
  validates_presence_of :name
  validates_presence_of :status
  validates_presence_of :start_date
  validates_presence_of :end_date
end
