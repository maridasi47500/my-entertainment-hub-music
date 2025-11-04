class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :pic
      t.string :textpic
      t.integer :cat_id
      t.string :written_by

      t.timestamps
    end
  end
end
