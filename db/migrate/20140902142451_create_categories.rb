class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string      :title
      t.string      :photo
      t.text        :bible_quote
      t.string      :bible_src
      t.text        :plot
      t.text        :customs
      t.string      :date

    end
  end
end
