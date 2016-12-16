class AddDayToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :day_number, :integer
  end
end
