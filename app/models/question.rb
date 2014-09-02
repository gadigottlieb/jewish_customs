class Question < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tests
end
