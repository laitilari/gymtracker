class Move < ActiveRecord::Base
  validates :name, uniqueness: true,
                     length: { minimum: 3 }
  has_many :results, dependent: :destroy
  has_many :users, through: :trainingmoves
end
