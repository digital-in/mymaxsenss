class CreateLieus < ActiveRecord::Migration[5.2]
  def change
    create_table :lieus do |t|
      t.string :nom
      t.string :adresse
      t.string :codepostal
      t.string :ville
      t.boolean :archive

      t.timestamps
    end
  end
end
