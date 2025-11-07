class CreateSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :songs do |t|
      t.integer :musicrelease_id
      t.string :title
      t.string :artist
      t.string :mysong

      t.timestamps
    end
  end
end
