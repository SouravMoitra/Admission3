class SubjectDetail < ActiveRecord::Base
	belongs_to :academic
	belongs_to :subject
	validates :subject_id, presence: true, numericality:  { only_integer: true }
	validates :academic_id, presence: true, numericality:  { only_integer: true }
	validates :marks, presence: true, numericality:  { only_integer: true, greater_than_or_equal_to: :subject_cutoff, less_than_or_equal_to: 100}
	validates_uniqueness_of :academic_id, scope: :subject_id

	private

	def subject_cutoff
		uid = self.academic
		id = uid.user_id
		cat = User.find(id).personal.category
		SubCutoff.where(subject_id: subject_id).pluck(cat)[0]
	end
end
