class CreateCabinets < ActiveRecord::Migration[5.2]
  def change
    create_table :cabinets do |t|
      t.string :nom
      t.text :description
      t.boolean :archive

      t.timestamps
    end
  end
end
