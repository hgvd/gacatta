class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.timestamps
    end
    add_index :users, [:provider, :uid]
  end

  def self.down
    drop_table :users
  end
end