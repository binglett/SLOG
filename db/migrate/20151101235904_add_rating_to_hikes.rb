class AddRatingToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :rating, :real
  end
end
