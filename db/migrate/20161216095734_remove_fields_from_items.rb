class RemoveFieldsFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :semester
    remove_column :items, :course
  end
end
