class Player < ActiveRecord::Base
	has_many :rosters
	has_many :teams, through: :rosters
	has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage/
	validate :birthdate_in_past?, if: 'birthdate.present?'
	validates_inclusion_of :gender, in: %w{male female}, if: 'gender.present?'
	validates_presence_of :first_name, :last_name

	def age(today = Time.current.to_date)
	  birthday = Date.new(today.year, birthdate.month, birthdate.day)
	  years = today.year - birthdate.year
	  years -= 1 if birthday > today
	  return years
	end

	def name
	  [first_name,middle_name,last_name].compact.join(' ')
	end

	protected

	def birthdate_in_past?
	  errors.add(:birthdate, 'Must be in the past') if birthdate.in_time_zone > Time.current
	end
end
