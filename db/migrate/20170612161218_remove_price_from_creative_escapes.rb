class RemovePriceFromCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    remove_column :creative_escapes, :price
  end
end
