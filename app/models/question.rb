class Question < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :votes

  belongs_to :user
  has_many :answers
end

