class AddUserParticipatingToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_participating, :string
  end
end
