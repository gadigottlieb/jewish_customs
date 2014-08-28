class AddDateToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :date, :string
  end
end
