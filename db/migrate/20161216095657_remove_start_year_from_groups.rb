class RemoveStartYearFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :start_year
  end
end
