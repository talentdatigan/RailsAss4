class CreatePokedexes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedexes do |t|
      t.integer :Index
      t.string :Name
      t.string :Type_1
      t.string :Type_2
      t.integer :Total
      t.integer :HP
      t.integer :Attack
      t.integer :Defense
      t.integer :Sp_Atk
      t.integer :Sp_Def
      t.integer :Speed
      t.integer :Generation
      t.boolean :Legendary

      t.timestamps
    end
  end
end
