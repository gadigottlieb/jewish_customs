class TestResult < ActiveRecord::Base
  belongs_to :tests
  belongs_to :users

  def get_grade(test, answers)
    correct_answers = 0
    wrong_answers = 0
    @test = Test.find(test)
    tests_answers = @test.questions.map do |a|
      a.correct_answer
    end
    tests_answers.each_with_index do |el, i|
      el == answers[i] ? correct_answers += 1 : wrong_answers += 1
    end
    score = (correct_answers.to_f / (correct_answers+wrong_answers).to_f) * 100
  end

  def show_correct_answer(test, answers)
    correct_answers = []
    wrong_answers = []
    @test = Test.find(test)
    tests_answers = @test.questions.map do |a|
      a.correct_answer
    end
    tests_answers.each_with_index do |el, i|
      el == answers[i] ? correct_answers << el : wrong_answers << el
    end
    wrong_answers.each do |a|
      a
    end
  end
end
