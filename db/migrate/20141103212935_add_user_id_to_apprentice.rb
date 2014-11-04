class AddUserIdToApprentice < ActiveRecord::Migration
  def change
    add_column :apprentices, :user_id, :integer
  end
end
