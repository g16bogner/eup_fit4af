class Project < ActiveRecord::Base

	has_many :tasks
	
	validates :title, length: { minimum: 5}
	validate :start_date_validation

	def start_date_validation
		if start_date.present? && start_date < Date.today
			errors.add(:start_date, ' kann nicht in der Vergangenheit liegen')
		end
	end

end
