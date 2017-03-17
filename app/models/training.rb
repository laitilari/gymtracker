class Training < ActiveRecord::Base
  has_many :trainingmoves
  has_many :moves, through: :trainingmoves
end
