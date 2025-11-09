class CreateAlbumphotos < ActiveRecord::Migration[8.0]
  def change
    create_table :albumphotos do |t|
      t.integer :photo_id
      t.string :title
      t.string :pic

      t.timestamps
    end
  end
end
