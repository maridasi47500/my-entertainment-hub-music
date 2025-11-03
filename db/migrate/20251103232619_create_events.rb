class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :content
      t.string :pic
      t.string :written_by

      t.timestamps
    end
  end
end
