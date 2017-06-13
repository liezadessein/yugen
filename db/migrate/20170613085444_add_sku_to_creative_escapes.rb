class AddSkuToCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    add_column :creative_escapes, :sku, :string
  end
end
