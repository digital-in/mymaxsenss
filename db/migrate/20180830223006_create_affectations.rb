class CreateAffectations < ActiveRecord::Migration[5.2]
  def change
    create_table :affectations do |t|
      t.references :cabinet, foreign_key: true
      t.references :creneau, foreign_key: true
      t.references :praticien, foreign_key: true
      t.datetime :datedebut
      t.datetime :datefin

      t.timestamps
    end
  end
end
