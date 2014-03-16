class User < ActiveRecord::Base
  attr_accessible :username, :password

  validates_presence_of :username, :password
  validates_uniqueness_of :username

  has_many :votes, :as => :voteable
  has_many :questions

  before_save :encrypt_password

  def encrypt_password
    self.password = SCrypt::Password.create(self.password)
  end

  def authenticate(password)
    SCrypt::Password.new(self.password) == password
  end


  def total_votes
    self.votes.select { |vote| vote.count == 1 }.count - self.votes.select { |vote| vote.count == -1 }.count
  end
end
