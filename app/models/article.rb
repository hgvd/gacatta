class Article < ActiveRecord::Base
  has_many :article_genes
  has_many :genes, :through => :article_genes, :order => :symbol
  has_many :article_subjects
  has_many :subjects, :through => :article_subjects, :order => :term
  has_many :variations
end
