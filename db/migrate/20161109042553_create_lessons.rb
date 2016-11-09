class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.belongs_to :institute, foreign_key: true

      t.timestamps
    end
  end
end