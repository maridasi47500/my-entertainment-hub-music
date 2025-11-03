class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :content
      t.string :myname
      t.integer :cat_id
      t.string :pic
      t.string :link

      t.timestamps
    end
  end
end
