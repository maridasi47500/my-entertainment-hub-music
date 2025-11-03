class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :year
      t.integer :location_id
      t.integer :cat_id
      t.integer :nationality_id

      t.timestamps
    end
  end
end
