class AddGradeToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :grade, :int
  end
end
