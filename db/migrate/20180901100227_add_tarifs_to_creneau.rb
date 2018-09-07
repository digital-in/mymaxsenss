class AddTarifsToCreneau < ActiveRecord::Migration[5.2]
  def change
    add_column :creneaus, :tarif1, :decimal, :precision => 8, :scale => 2
    add_column :creneaus, :tarif2, :decimal, :precision => 8, :scale => 2
  end
end
