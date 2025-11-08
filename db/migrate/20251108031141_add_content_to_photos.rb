class AddContentToPhotos < ActiveRecord::Migration[8.0]
  def change
    add_column :photos, :content, :text
  end
end
