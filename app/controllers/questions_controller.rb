class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to category_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Category.find(params[:id])
    if @question.destroy
      redirect_to questions_path
    else
      redirect_to question_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :option_1, :option_2, :option_3, :option_4, :correct_answer)
  end
end
