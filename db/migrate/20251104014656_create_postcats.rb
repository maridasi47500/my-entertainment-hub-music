class CreatePostcats < ActiveRecord::Migration[8.0]
  def change
    create_table :postcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
