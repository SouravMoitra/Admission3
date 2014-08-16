class SubjectDetail < ActiveRecord::Base
	belongs_to :academic
	belongs_to :subject
	validates :subject_id, presence: true, numericality:  { only_integer: true }
	validates :academic_id, presence: true, numericality:  { only_integer: true }
	validates :marks, presence: true, numericality:  { only_integer: true, greater_than_or_equal_to: :subject_cutoff, less_than_or_equal_to: 100}

	private

	def subject_cutoff
		uid = self.academic.user_id
		cat = User.find(uid).personal.category

		SubCutoff.where(subject_id: subject_id).pluck(cat)[0]
	end
end

