class Answer < ActiveRecord::Base
  attr_accessible :content, :author, :question_id

  has_many :votes, :as => :voteable
  belongs_to :question

  def total_votes
    self.votes.select { |vote| vote.count == 1 }.count - self.votes.select { |vote| vote.count == -1 }.count
  end
end
