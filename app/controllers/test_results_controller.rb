class TestResultsController < ApplicationController

  def test_submit
    question_response = params["questions"].values
    test_taken = params["test"]
    @test_result = TestResult.new({test_id: test_taken, user_id: current_user.id})
    @test_result.score = @test_result.get_grade(test_taken, question_response)
    if @test_result.save
      redirect_to user_path(current_user)
    else
      redirect_to test_path(test_taken)
    end
  end

end
