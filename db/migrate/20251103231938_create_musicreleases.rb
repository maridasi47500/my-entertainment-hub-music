class CreateMusicreleases < ActiveRecord::Migration[8.0]
  def change
    create_table :musicreleases do |t|
      t.string :title
      t.string :category
      t.string :content
      t.string :pic

      t.timestamps
    end
  end
end
