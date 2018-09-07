class CreatePraticiens < ActiveRecord::Migration[5.2]
  def change
    create_table :praticiens do |t|
      t.string :nom
      t.string :prenom
      t.text :text

      t.timestamps
    end
  end
end
