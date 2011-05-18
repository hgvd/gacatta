module ArticlesHelper
  def mark_genes(text, genes, diseases, variations)
    genes.each do |gene|
      match = []
      match.push(gene.name)
      match.push(gene.symbol)
      match.push(gene.synonyms) if gene.synonyms.present?
      text.gsub!(/(#{match.join("|")})/i, '<span class="gene" title="' + gene.symbol + '">\1</span>')
    end
    
    diseases.each do |disease|
      match = []
      match.push(disease.term)
      match.push(disease.synonyms.map{|s| s.term}.flatten)
      text.gsub!(/(#{match.flatten.join("|")})/i, '<span class="disease" title="' + disease.term + '">\1</span>')
    end
    
    variations.each do |variation|
      match = []
      match.push(variation.mutation_pattern.gsub(/[\*\(\)]/, "")) if variation.mutation_pattern.present?
      match.push(variation.position_pattern.gsub(/[\*\(\)]/, "")) if variation.position_pattern.present?
      text.gsub!(/(#{match.compact.join("|")})/i, '<span class="variation" title="' +  variation.wild_type + variation.position + variation.mutation_type + '">\1</span>')
    end
    text.html_safe
  end
end
