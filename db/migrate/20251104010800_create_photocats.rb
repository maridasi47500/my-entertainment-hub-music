class CreatePhotocats < ActiveRecord::Migration[8.0]
  def change
    create_table :photocats do |t|
      t.string :name

      t.timestamps
    end
  end
end
