class AddLengthToCreativeEscapes < ActiveRecord::Migration[5.0]
  def change
    add_column :creative_escapes, :length, :string
  end
end
