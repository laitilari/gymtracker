class Move < ActiveRecord::Base
  validates :name, uniqueness: true,
                     length: { minimum: 3 }
  has_many :trainingmoves
end
