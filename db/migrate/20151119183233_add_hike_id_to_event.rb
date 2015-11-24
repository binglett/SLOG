class AddHikeIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :hike_id, :int
  end
end
