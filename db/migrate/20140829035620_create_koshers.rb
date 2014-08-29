class CreateKoshers < ActiveRecord::Migration
  def change
    create_table :koshers do |t|
      t.text   :kosher_description
      t.text   :animal_quote
      t.string :animal_src
      t.text   :animal_description
      t.text   :fish_quote
      t.string :fish_src
      t.text   :fish_description
      t.text   :bird_quote
      t.string :bird_src
      t.text   :bird_description
      t.text   :remaining_creatures
      t.text   :slaughter
      t.text   :utensils
      t.text   :milk_and_meat
      t.text   :kosher_certifications
      t.string :ortho_union
      t.string :organized_kosher
      t.string :star_k
      t.string :kof_kosher
    end
  end
end
