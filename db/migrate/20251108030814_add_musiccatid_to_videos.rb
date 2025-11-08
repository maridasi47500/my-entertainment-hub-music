class AddMusiccatidToVideos < ActiveRecord::Migration[8.0]
  def change
    add_column :videos, :musiccat_id, :integer
  end
end
