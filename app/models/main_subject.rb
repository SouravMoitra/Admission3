class MainSubject < ActiveRecord::Base
  belongs_to :stream
  has_one :sub_cutoff
  has_many :main_subject_details
  validates :stream_id, presence: true, numericality: { only_integer: true }
  validates :subject_name, presence: true, length: { in: 2..20 }
end
