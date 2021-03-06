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
end
