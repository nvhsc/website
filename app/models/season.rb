class Season < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :status
  validates_presence_of :start_date
  validates_presence_of :end_date
end
