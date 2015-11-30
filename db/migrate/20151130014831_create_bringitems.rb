class CreateBringitems < ActiveRecord::Migration
  def change
    create_table :bringitems do |t|
      t.string :itemname
      t.integer :needed
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
