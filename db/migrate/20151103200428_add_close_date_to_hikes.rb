class AddCloseDateToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :close_date, :interval
  end
end
