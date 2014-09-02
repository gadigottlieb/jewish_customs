class TestResults < ActiveRecord::Base
  belongs_to :tests
  belongs_to :users

  # def score
  #
  # end

end
