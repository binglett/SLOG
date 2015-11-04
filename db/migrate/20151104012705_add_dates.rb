class AddDates < ActiveRecord::Migration
  def change
    add_column :hikes, :open_date, :datetime
    add_column :hikes, :close_date, :datetime
  end
end
