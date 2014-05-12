class Question < ActiveRecord::Base
  attr_accessible :title, :content, :best_answer_id, :author, :user_id, :votes


  has_many :votes, :as => :voteable
  belongs_to :user
  has_many :answers

  def total_votes
    self.votes.select { |vote| vote.count == 1 }.count - self.votes.select { |vote| vote.count == -1 }.count
  end

end

