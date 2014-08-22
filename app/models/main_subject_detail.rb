class MainSubjectDetail < ActiveRecord::Base
  belongs_to :academic
  belongs_to :main_subject
  validates :main_subject_id, presence: true, numericality: { only_integer: true }
  validates :academic_id, presence: true, numericality: { only_integer: true}
  validates :marks, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: :subject_cutoff, less_than_or_equal_to: 100}
  validates_uniqueness_of :academic_id, scope: :main_subject_id



  private

  def subject_cutoff
    uid = self.academic.user_id
    cat =User.find(uid).personal.category
    SubCutoff.where(main_subject_id: main_subject_id).pluck(cat)[0]
  end
end
