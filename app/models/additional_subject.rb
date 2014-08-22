class AdditionalSubject < ActiveRecord::Base
  belongs_to :academics
  before_save :strip_whitespaces
  validates :subject_name , presence: true, length: { in: 2..20 }
  validates :marks, presence: true, numericality: {only_integer: true}
  validates_uniqueness_of :academic_id, scope: :subject_name
  def strip_whitespaces
    self.subject_name = subject_name.strip
  end
end
