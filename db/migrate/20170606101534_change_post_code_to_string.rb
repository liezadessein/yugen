class ChangePostCodeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :creative_escapes, :postcode, :string
  end
end
