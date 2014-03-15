class QuestionsController < ApplicationController
  def index
    # session.clear
    @all_questions = Question.all
    if session[:id]
      @my_questions = Question.where(user_id: view_context.current_user.id)
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: params[:id]).order("created_at ASC")
  end

  def new
  end

  def create
    user = User.find(view_context.current_user.id)
    new_question = user.questions.build(params[:new_question])

    if new_question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def upvote
    question = Question.find(params[:question_id])
    count = question.votes + 1
    question.update_attributes(votes: count)
    redirect_to question_path(params[:question_id])
  end

  def downvote
    question = Question.find(params[:question_id])
    count = question.votes - 1
    question.update_attributes(votes: count)
    redirect_to question_path(params[:question_id])
  end

end
