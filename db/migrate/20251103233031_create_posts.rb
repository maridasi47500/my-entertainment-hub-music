class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :author
      t.string :pictext
      t.string :pic

      t.timestamps
    end
  end
end
