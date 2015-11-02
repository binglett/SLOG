class AddDistanceToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :distance, :int
  end
end
