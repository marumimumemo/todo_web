class Task < ActiveRecord::Base
  scope :unfinished, -> { where(finished: ["", nil]) }
  scope :finished, -> { where.not(finished: ["", nil]) }
  scope :asc, -> { order(scheduled: :ASC) }
  scope :desc, -> { order(finished: :DESC) }
end
