json.extract! pokedex, :id, :Index, :Name, :Type_1, :Type_2, :Total, :HP, :Attack, :Defense, :Sp_Atk, :Sp_Def, :Speed, :Generation, :Legendary, :created_at, :updated_at
json.url pokedex_url(pokedex, format: :json)
