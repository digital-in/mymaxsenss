class AddArchiveboolAndIdToPraticiens < ActiveRecord::Migration[5.2]
  def change
    add_column :praticiens, :archive, :boolean
  end
end
