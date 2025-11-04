class CreateMusiccats < ActiveRecord::Migration[8.0]
  def change
    create_table :musiccats do |t|
      t.string :name

      t.timestamps
    end
  end
end
