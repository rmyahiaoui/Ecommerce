class CreateCommandes < ActiveRecord::Migration
  def self.up
    create_table :commandes do |t|
      t.integer :produit_id
      t.integer :user_id
      t.boolean :payer

      t.timestamps
    end
  end

  def self.down
    drop_table :commandes
  end
end
