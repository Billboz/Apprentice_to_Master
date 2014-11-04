class AddUserIdToMaster < ActiveRecord::Migration
  def change
    add_column :masters, :user_id, :integer
  end
end
