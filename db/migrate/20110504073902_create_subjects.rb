class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :term
      t.integer :articles_count, :default => 0
    end
    add_index :subjects, :term
    add_index :subjects, [:articles_count, :term]
  end

  def self.down
    drop_table :subjects
  end
end