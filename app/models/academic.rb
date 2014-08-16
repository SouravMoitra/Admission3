class Academic < ActiveRecord::Base
  belongs_to :users
  has_many :additional_subjects
  # validations
  validates :tenth_year_pass, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 2000, less_than_or_equal_to: 2012}
  validates :tenth_board, presence: true, length: { maximum: 5}
  validates :tenth_marks_percent, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {only_integer: false, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :hs_year_pass, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 2002, less_than_or_equal_to: 2014}
  validates :hs_board, presence: true, length: { maximum: 5}
  validates :hs_marks_percent, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {only_integer: false, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :tenth_roll, presence: true
  validates :hs_roll, presence: true

  before_save :strip_whitespaces

  private
  def strip_whitespaces
    self.tenth_board = tenth_board.strip
    self.hs_board = hs_board.strip
  end
end