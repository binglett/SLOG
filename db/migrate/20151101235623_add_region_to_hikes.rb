class AddRegionToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :region, :string
  end
end
