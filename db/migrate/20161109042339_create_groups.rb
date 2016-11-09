class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.belongs_to :institute, foreign_key: true
      t.integer :start_year
      t.string :number

      t.timestamps
    end
  end
end
