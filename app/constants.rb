module Constants
  def self.definiteArticle
    @definiteArticle
  end

  @definiteArticle = {
    :maskulinum => { :nominativ => 'der',
                     :akkusativ => 'den',
                     :dativ     => 'dem',
                     :genitiv   => 'des'},

    :femininum =>  { :nominativ => 'die',
                     :akkusativ => 'die',
                     :dativ     => 'der',
                     :genitiv   => 'der'
                     },

    :neutrum   =>  { :nominativ => 'das',
                     :akkusativ => 'das',
                     :dativ     => 'dem',
                     :genitiv   => 'des'
                     },

    :plural    =>  { :nominativ => 'die',
                     :akkusativ => 'die',
                     :dativ     => 'den',
                     :genitive  => 'der'
                     }
  }
end
