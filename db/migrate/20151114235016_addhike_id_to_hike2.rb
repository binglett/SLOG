class AddhikeIdToHike2 < ActiveRecord::Migration
  def change
    add_column :hikes, :hike_id, :int
  end
end
