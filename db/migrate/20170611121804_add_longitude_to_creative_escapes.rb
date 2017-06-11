class AddLongitudeToCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    add_column :creative_escapes, :longitude, :string
  end
end
