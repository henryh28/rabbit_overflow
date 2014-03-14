class AnswersController < ApplicationController
  def create
    question = params[:answer][:question_id]
    new_answer = Answer.new(params[:answer])
    new_answer.update_attributes(author: view_context.current_user.username)
    if new_answer.save
      redirect_to question_path(params[:answer][:question_id])
    else
      render :new
    end
  end

  def upvote
    answer = Answer.find(params[:answer_id])
    count = answer.votes + 1
    answer.update_attributes(votes: count)
    redirect_to question_path(answer.question_id)
  end

  def downvote
    answer = Answer.find(params[:answer_id])
    count = answer.votes - 1
    answer.update_attributes(votes: count)
    redirect_to question_path(answer.question_id)
  end

end
