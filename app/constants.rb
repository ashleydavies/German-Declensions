module Constants
  def self.definiteArticle
    @definiteArticle
  end

  def self.cases()   @cases   end
  def self.genders() @genders end

  # We treat plural as a case internally as they are mutually exclusive
  @cases   = [:nominativ, :akkusativ, :dativ, :genitiv]
  @genders = [:maskulinum, :femininum, :neutrum, :plural]

  @definiteArticle = {
    :maskulinum => { :nominativ => 'der',
                     :akkusativ => 'den',
                     :dativ     => 'dem',
                     :genitiv   => 'des'
                     },

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
                     :genitiv   => 'der'
                     }
  }
end
