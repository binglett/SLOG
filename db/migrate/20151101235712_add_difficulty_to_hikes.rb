class AddDifficultyToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :difficulty, :int
  end
end
