class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true,
                     length: { minimum: 3 }
  validates :password, length: { minimum: 4 }
  has_many :results, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :gyms, through: :memberships

  def topMove
  moves = results.map{|r| r.move}
  freq = moves.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  moves.max_by { |v| freq[v] }
  end

  def gymList
  gyms.map { |g| g.name }
  end

end
