class AddPriceToCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    add_monetize :creative_escapes, :price, currency: { present: false }
  end
end
