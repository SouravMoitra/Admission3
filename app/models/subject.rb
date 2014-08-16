class Subject < ActiveRecord::Base
	belongs_to :stream
	has_one :sub_cutoff

	validates :subject, presence: true, length: { in: 2..20 }

end
