class RemoveInsituteIdFromLessons < ActiveRecord::Migration[5.0]
  def change
    remove_column :lessons, :institute_id
  end
end
