class RemovehikeIdFromHike < ActiveRecord::Migration
  def change
    remove_column :hikes, :hike_id
  end
end
