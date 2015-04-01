module Temporal
  extend ActiveSupport::Concern

  included do
    validates_presence_of :start_at
    validates_presence_of :end_at
    validate :positive_time_flow
  end

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
    start_at > Time.current
  end

  def past?
    Time.current > end_at
  end

  protected

  def positive_time_flow
    if start_at.present? && end_at.present?
      if start_at >= end_at
        errors.add(:end_at, 'must end after it starts')
      end
    end
  end
end