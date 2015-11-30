class CreateBringlists < ActiveRecord::Migration
  def change
    create_table :bringlists do |t|
      t.string :listname
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
