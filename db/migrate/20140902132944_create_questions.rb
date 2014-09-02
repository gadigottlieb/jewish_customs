class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text    :question
      t.text    :option_1
      t.text    :option_2
      t.text    :option_3
      t.text    :option_4
      t.string  :correct_answer
      t.belongs_to :category
    end
  end
end
