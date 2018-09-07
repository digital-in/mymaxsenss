class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :nom
      t.text :description
      t.decimal :tarifht
      t.decimal :tva
      t.integer :periodicitemois
      t.string :condition1
      t.string :condition2
      t.boolean :archive

      t.timestamps
    end
  end
end
