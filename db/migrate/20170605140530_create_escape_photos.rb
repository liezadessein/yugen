class CreateEscapePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :escape_photos do |t|
      t.string :photo
      t.references :creative_escape, foreign_key: true

      t.timestamps
    end
  end
end
