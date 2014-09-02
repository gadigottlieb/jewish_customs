class Question < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tests

  def answers_string
    options_string = ""
    answers = [option_1, option_2, option_3, option_4]
    answers.each_with_index do |answer, i|
      answer_string = "<option value=#{i+1}>#{answer}</option>"
      options_string += answer_string
    end
    return options_string
  end
end
