class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.belongs_to :test
      t.belongs_to :user
      t.integer :score
    end
  end
end
