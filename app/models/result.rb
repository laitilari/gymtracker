class Result < ActiveRecord::Base
  validates :weight, numericality: { greater_than_or_equal_to: 1,
                                      less_than_or_equal_to: 900}
  validates :reps, numericality: { greater_than_or_equal_to: 1,
                                      less_than_or_equal_to: 900}
  belongs_to :user
  belongs_to :move
end
