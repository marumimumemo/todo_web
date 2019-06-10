class Task < ActiveRecord::Base
  scope :asc, -> { order(scheduled: :ASC) }
  scope :desc, -> { order(completion: :DESC) }
end
