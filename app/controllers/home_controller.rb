class HomeController < ApplicationController
  def index
  	@pokedexes = Pokedex.all
  	@normal = 0
  	@fire = 0
  	@fighting = 0
  	@water = 0
  	@flying = 0
  	@grass = 0
  	@poison = 0
  	@electric = 0
  	@ground = 0
  	@psychic = 0
  	@rock = 0
  	@ice = 0
  	@bug = 0
  	@dragon = 0
  	@ghost = 0
  	@dark = 0
  	@steel = 0
  	@fairy = 0
  	@pokedexes.each do |pokemon|
  		if pokemon.Type_1 == 'Normal'
  			@normal += 1
  		elsif pokemon.Type_1 == 'Fire'
  			@fire += 1
  		elsif pokemon.Type_1 == 'Fighting'
  			@fighting += 1
  		elsif pokemon.Type_1 == 'Water'
  			@water += 1
  		elsif pokemon.Type_1 == 'Flying'
  			@flying += 1
  		elsif pokemon.Type_1 == 'Grass'
  			@grass += 1
  		elsif pokemon.Type_1 == 'Poison'
  			@poison += 1
  		elsif pokemon.Type_1 == 'Electric'
  			@electric += 1
  		elsif pokemon.Type_1 == 'Ground'
  			@ground += 1
  		elsif pokemon.Type_1 == 'Psychic'
  			@psychic += 1
  		elsif pokemon.Type_1 == 'Rock'
  			@rock += 1
  		elsif pokemon.Type_1 == 'Ice'
  			@ice += 1
  		elsif pokemon.Type_1 == 'Bug'
  			@bug += 1
  		elsif pokemon.Type_1 == 'Dragon'
  			@dragon += 1
  		elsif pokemon.Type_1 == 'Ghost'
  			@ghost += 1
  		elsif pokemon.Type_1 == 'Dark'
  			@dark += 1
  		elsif pokemon.Type_1 == 'Steel'
  			@steel += 1
  		elsif pokemon.Type_1 == 'Fairy'
  			@fairy += 1
  		end
  	end
  end


end
