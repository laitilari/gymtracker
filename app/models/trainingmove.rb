class Trainingmove < ActiveRecord::Base
  belongs_to :move
  belongs_to :user
end
