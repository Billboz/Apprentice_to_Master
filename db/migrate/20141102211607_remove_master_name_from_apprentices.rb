class RemoveMasterNameFromApprentices < ActiveRecord::Migration
  def change
    remove_column :apprentices, :master_name, :string
  end
end
