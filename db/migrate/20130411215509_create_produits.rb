class CreateProduits < ActiveRecord::Migration
  def self.up
    create_table :produits do |t|
      t.string :nom
      t.integer :prix
      t.string :description
      t.string :photo
      t.integer :categori_id
      t.integer :quantite

      t.timestamps
    end
  end

  def self.down
    drop_table :produits
  end
end
