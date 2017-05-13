class Gym < ActiveRecord::Base
  validates :name, uniqueness: true,
                     length: { minimum: 2 }
  validates :founded, numericality: { greater_than_or_equal_to: 1500,
                                    less_than_or_equal_to: 2017,
                                    only_integer: true }
  validates :address, length: {minimum: 5}
  has_many :memberships, dependent: :destroy
  has_many :members, through: :memberships, source: :user
end
