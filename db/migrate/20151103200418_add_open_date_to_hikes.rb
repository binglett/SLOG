class AddOpenDateToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :open_date, :interval
  end
end
