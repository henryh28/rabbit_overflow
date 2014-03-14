class Answer < ActiveRecord::Base
  attr_accessible :content, :author, :votes, :question_id

  belongs_to :question
end
