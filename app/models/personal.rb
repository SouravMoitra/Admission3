class Personal < ActiveRecord::Base
  before_save :strip_whitespaces
  belongs_to :user
  validates :first_name, presence: true, length: {in: 5..24}
  validates :middle_name, length: { maximum: 24 }
  validates :last_name, presence: true, length: { in: 5..24 }
  validates :date_of_birth, presence: true
  validates :gender, presence: true, length: { maximum: 1}
  validates :category, presence: true
  validates :blood_group, presence: true, length: { maximum: 2 }
  validates :fathers_name, presence: true, length: { in: 5..48 }
  validates :mothers_name, presence: true, length: { in: 5..48 }
  validates :address_present, presence: true, length: {in: 10..100}
  validates :photo, presence: true


  private
  def strip_whitespaces
    self.first_name = first_name.strip
    self.last_name = last_name.strip
    self.middle_name = middle_name.strip unless middle_name.blank?
    self.fathers_name = fathers_name.strip
    self.mothers_name = mothers_name.strip
  end
end
