class AdditionalSubject < ActiveRecord::Base
	belongs_to :academics
	before_save :strip_whitespaces
	validates :subject , presence: true, length: { in: 2..20 }
	def strip_whitespaces
		self.subject = subject.strip
	end
end