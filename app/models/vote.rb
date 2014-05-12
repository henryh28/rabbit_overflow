class Vote < ActiveRecord::Base
  attr_accessible :count, :user_id

  belongs_to :voteable, polymorphic: true
  belongs_to :user
end
