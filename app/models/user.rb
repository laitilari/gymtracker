class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true,
                     length: { minimum: 3 }
  validates :password, length: { minimum: 4 }
  has_many :results, dependent: :destroy

end
