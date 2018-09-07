class AddFieldsToPraticiens < ActiveRecord::Migration[5.2]
  def change
    add_column :praticiens, :email, :string
    add_column :praticiens, :pratique, :string
    add_column :praticiens, :tel, :string
    add_column :praticiens, :datemaj, :timestamp
    add_column :praticiens, :kids, :boolean
    add_column :praticiens, :maxsenss, :boolean
  end
end
