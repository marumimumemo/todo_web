class Task < ActiveRecord::Base
#validations
  validates :title, presence: true
  validates :body, presence: true
  validates :scheduled, presence: true
  validates :finished, presence: true, on: :update, if: :unfinished?
  validates :priority, presence: true
#scope
  scope :unfinished, -> { where(unfinished: ["1"]) }
  scope :finished, -> { where(unfinished: ["0"]) }
  scope :asc, -> { order(scheduled: :ASC) }
  scope :desc, -> { order(finished: :DESC) }
end
