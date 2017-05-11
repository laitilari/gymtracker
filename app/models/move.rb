class Move < ActiveRecord::Base
  validates :name, uniqueness: true,
                     length: { minimum: 3 }
  has_many :results, dependent: :destroy
  has_many :users, through: :trainingmoves

  def averageWeight
  results.map{ |r| r.weight }.sum / results.count.to_f
  end

  def averageReps
  results.map{ |r| r.reps }.sum / results.count.to_f
  end

  def topWeight
  results.map{ |r| r.weight }.max
  end

end
