class Stream < ActiveRecord::Base
	has_many :subjects
	has_one :quota
	has_one :cutoff

	validates :streams, presence: true, length: { in: 2..20 }
	validates :seats, presence: true, numericality:  { only_integer: true }

end
