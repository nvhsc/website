class Division < ActiveRecord::Base
  belongs_to :sport
  
  validates_presence_of :sport
  validates_presence_of :name
end
