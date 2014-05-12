class VotesController < ApplicationController

  def create
    # raise params.inspect
    voteable = find_voteable
    vote = voteable.votes.find_or_create_by_user_id(session[:id])
    vote.update_attributes(count: 1) if vote.count == 0
    redirect_to question_path(session[:question_id])
  end

  def destroy
    # raise params.inspect
    voteable = find_voteable
    vote = voteable.votes.find_or_create_by_user_id(session[:id])
    vote.update_attributes(count: -1) if vote.count == 0
    redirect_to question_path(session[:question_id])
  end

  def find_voteable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end

