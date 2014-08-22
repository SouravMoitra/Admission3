class Stream < ActiveRecord::Base
  has_many :main_subjects
  has_one :stream_cutoff
  has_one :stream_quota
  validates :stream_name, presence: true, length: { in: 2..20 }
end
