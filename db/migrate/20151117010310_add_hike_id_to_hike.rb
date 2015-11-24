class AddHikeIdToHike < ActiveRecord::Migration
  def change
    add_column :hikes, :hike_id, :int
  end
end
