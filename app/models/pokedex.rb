class Pokedex < ApplicationRecord
	 def self.search(term)
    	if term
      where('name LIKE ?',"%#{term}%")
    else
      all
    end
  end
end
