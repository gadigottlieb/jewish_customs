class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string    :title
    end
  end
end
