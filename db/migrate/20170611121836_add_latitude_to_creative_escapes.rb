class AddLatitudeToCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    add_column :creative_escapes, :latitude, :string
  end
end
