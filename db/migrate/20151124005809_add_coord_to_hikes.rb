class AddCoordToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :lat, :float
    add_column :hikes, :lng, :float
  end
end
