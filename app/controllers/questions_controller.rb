class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def create
    user = User.find(session[:id])
    new_question = user.questions.build(params[:new_question])

    if new_question.save
      redirect_to root_path
    else
      render :new
    end
  end

end
