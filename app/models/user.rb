class User < ActiveRecord::Base
  attr_accessible :username, :password

  validates_presence_of :username, :password
  validates_uniqueness_of :username

  has_many :votes, :as => :voteable
  has_many :questions

  def total_votes
    self.votes.select { |vote| vote.count == 1 }.count - self.votes.select { |vote| vote.count == -1 }.count
  end
end
