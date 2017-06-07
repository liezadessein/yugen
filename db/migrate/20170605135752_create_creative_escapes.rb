class CreateCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    create_table :creative_escapes do |t|
      t.string :skill
      t.text :description
      t.integer :price
      t.string :currency
      t.integer :streetnumber
      t.string :address
      t.string :postcode
      t.string :city
      t.string :email
      t.integer :phone
      t.boolean :bookable
      t.string :country

      t.timestamps
    end
  end
end
