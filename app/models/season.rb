class Season < ActiveRecord::Base
  has_many :teams
  
  validates_presence_of :name
  validates_presence_of :start_date
  validates_presence_of :end_date
  validate :end_date_after_start_date

  def status
    if upcoming?
      return :upcoming 
    elsif past?
      return :past
    else
      return :current
    end
  end

  def upcoming?
    start_date > Time.current
  end

  def past?
    Time.current > end_date
  end

  protected

  def end_date_after_start_date
    if start_date.present? && end_date.present?
      if start_date >= end_date
        errors.add(:end_date, 'must be greater than start date')
      end
    end
  end
end
