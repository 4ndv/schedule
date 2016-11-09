class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.belongs_to :group, foreign_key: true
      t.integer :semester
      t.integer :course
      t.integer :position
      t.belongs_to :lesson, foreign_key: true
      t.belongs_to :teacher, foreign_key: true
      t.integer :week_number

      t.timestamps
    end
  end
end
