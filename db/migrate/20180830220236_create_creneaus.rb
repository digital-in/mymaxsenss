class CreateCreneaus < ActiveRecord::Migration[5.2]
  def change
    create_table :creneaus do |t|
      t.integer :numjour
      t.string :txtjour
      t.integer :heuredebut
      t.integer :heurefin
      t.boolean :archive

      t.timestamps
    end
  end
end
