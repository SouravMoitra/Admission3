class StreamCutoff < ActiveRecord::Base
  belongs_to :stream
  validates :stream_id, presence: true, numericality: { only_integer: true }
  validates :gen, presence: true, numericality: { only_integer: true }
  validates :sc, presence: true, numericality: { only_integer: true }
  validates :st, presence: true, numericality: { only_integer: true }
  validates :obc_a, presence: true, numericality: { only_integer: true }
  validates :obc_b, presence: true, numericality: { only_integer: true }
end
