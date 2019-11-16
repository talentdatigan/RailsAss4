class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :addresses, null: false, foreign_key: true
      t.references :credit_cards, null: false, foreign_key: true

      t.timestamps
    end
  end
end
