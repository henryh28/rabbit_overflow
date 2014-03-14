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
    @answers = Answer.where(question_id: params[:id])
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

end
