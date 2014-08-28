class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :title
      t.string :photo
      t.text   :bible_quote
      t.string :bible_src
      t.text   :plot
      t.text   :customs
    end
  end
end
