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
    current_test = Test.find(test)
    incorrect_question = []
    incorrect_answer = []
    correct_answers = current_test.questions.map do |this_question|
      this_question.correct_answer
    end

    show_answer = correct_answers.select.with_index do |answer, index|
      if answer != answers[index]
        incorrect_answer.push(answers[index])
        incorrect_question.push(current_test.questions[index].question)
        true
      end
    end
    {answers: show_answer, questions: incorrect_question, submitted_answers: incorrect_answer}
  end

end
