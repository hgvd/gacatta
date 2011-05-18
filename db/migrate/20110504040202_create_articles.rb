class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :source
      t.text :title
      t.text :abstract
      t.string :doi
    end
  end

  def self.down
    drop_table :articles
  end
end
