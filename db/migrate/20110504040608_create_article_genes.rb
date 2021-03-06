class CreateArticleGenes < ActiveRecord::Migration
  def self.up
    create_table :article_genes do |t|
      t.integer :article_id
      t.integer :gene_id
    end
    add_index :article_genes, :article_id
    add_index :article_genes, :gene_id
  end

  def self.down
    drop_table :article_genes
  end
end