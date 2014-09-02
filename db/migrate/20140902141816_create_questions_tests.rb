class CreateQuestionsTests < ActiveRecord::Migration
  def change
    create_table :questions_tests, id: false do |t|
      t.belongs_to   :question
      t.belongs_to   :test
    end
  end
end
