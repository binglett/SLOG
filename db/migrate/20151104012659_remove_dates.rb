class RemoveDates < ActiveRecord::Migration
  def change
    remove_column :hikes, :open_date
    remove_column :hikes, :close_date
  end
end
