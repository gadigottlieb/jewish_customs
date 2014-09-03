class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @test = Test.find(params[:test_id])
    @question = Question.new
    @categories = Category.all
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      @question.tests << Test.find(params[:test_id])
      redirect_to test_path(Test.find(params[:test_id]))
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
    @categories = Category.all
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      @question.tests << Test.find(params[:test_id])
      redirect_to test_path(Test.find(params[:test_id]))
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @test = Test.find(params[:test_id])
    if @question.destroy
      redirect_to test_questions_path(@test)
    else
      redirect_to question_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :option_1, :option_2, :option_3, :option_4, :correct_answer, :category_id)
  end
end
