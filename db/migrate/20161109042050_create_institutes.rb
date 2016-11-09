class CreateInstitutes < ActiveRecord::Migration[5.0]
  def change
    create_table :institutes do |t|
      t.string :name

      t.timestamps
    end
  end
end
