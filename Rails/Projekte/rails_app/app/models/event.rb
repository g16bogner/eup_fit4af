class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :likers, through: :likes, source: :user

	validates :name, presence: true
	validates :price, numericality: true
	validates :description, length: {minimum: 25}

	def free?
		self.price.present? && self.price > 0 
	end

	def spots_left
		if capacity.zero?
			0
		else
			capacity - registrations.size
		end
	end	
	scope :upcoming, -> {where("start_at >= ?", Time.now).order("start_at")}
	scope :free, -> { where("price <= 0").order(:name)}
	scope :past, -> { where("start_at <= ?", Time.now)}
end
