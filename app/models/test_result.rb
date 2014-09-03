class TestResult < ActiveRecord::Base
  belongs_to :tests
  belongs_to :users

  def get_grade
    correct_answers = 0
    wrong_answers = 0
    @question = Question.find(params[:id])
    @test = Test.find(params[:id])
    if @question.correct_answer == answer submitted
      correct_answers += 1
    else
      wrong_answers += 1
    end
    return (correct_answers / (correct_answers+wrong_answers))
  end
end
