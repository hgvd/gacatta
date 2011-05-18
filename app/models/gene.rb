class Gene < ActiveRecord::Base
  has_many :article_genes
  has_many :articles, :through => :article_genes
end
