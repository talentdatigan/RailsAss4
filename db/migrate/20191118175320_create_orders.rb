class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :price
      t.string :street
      t.string :city
      t.string :postcode
      t.string :card_no
      t.string :exp_date
      t.string :name_on_card
      t.string :organisation
      t.references :address, null: false, foreign_key: true
      t.references :credit_card, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :pokedex, null: false, foreign_key: true

      t.timestamps
    end
  end
end
