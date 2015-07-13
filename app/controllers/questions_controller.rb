class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @question.answers.build
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:success] = "Question created!"
    else
      render :action => "new"
    end
  end

  private

  def params
    params.require(:question).permit(:question_content, :description, answer_attributes: [:answer_content])
  end
end
