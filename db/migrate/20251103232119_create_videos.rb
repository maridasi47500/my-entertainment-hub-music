class CreateVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :pic
      t.string :link

      t.timestamps
    end
  end
end
