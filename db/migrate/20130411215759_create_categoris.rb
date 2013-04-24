class CreateCategoris < ActiveRecord::Migration
  def self.up
    create_table :categoris do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :categoris
  end
end
