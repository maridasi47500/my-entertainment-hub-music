class CreateMoviecats < ActiveRecord::Migration[8.0]
  def change
    create_table :moviecats do |t|
      t.string :name

      t.timestamps
    end
  end
end
