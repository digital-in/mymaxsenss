class AddLieuid2ToCabinet < ActiveRecord::Migration[5.2]
  def change
    add_reference :cabinets, :lieu, foreign_key: true
  end
end
