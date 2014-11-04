class SetupUsers < ActiveRecord::Migration
  def change
        user_id = User.first

        Master.update_all "user = #{user_id}"

  end
end
