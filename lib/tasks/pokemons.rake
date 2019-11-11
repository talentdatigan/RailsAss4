require 'csv'
namespace :pokemons do
  desc "TODO"
  task gather_pokemons: :environment do
  	Pokedex.destroy_all

    CSV.foreach("lib/assets/pokemon.csv", :headers =>true) do |row|
      puts row.inspect
      Pokedex.create!(
                 Index: row[0].to_i,
                 Name:row[1].to_s,
                 Type_1: row[2].to_s,
                 Type_2: row[3].to_s,
                 Total: row[4].to_i,
                 HP: row[5].to_i,
                 Attack: row[6].to_i,
                 Defense: row[7].to_i,
                 Sp_Atk: row[8].to_i,
                 Sp_Def: row[9].to_i,
                 Speed: row[10].to_i,
                 Generation: row[11].to_i,
                 Legendary: row[12]
      )
    end

  end
end
