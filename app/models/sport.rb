class Sport < ActiveRecord::Base
  include Icon

  has_many :divisions
  has_many :teams, through: :divisions

  validates_presence_of :name
  validates_presence_of :description
end
