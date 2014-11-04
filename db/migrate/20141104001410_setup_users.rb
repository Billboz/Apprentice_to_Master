class SetupUsers < ActiveRecord::Migration
  def change
        user = User.first

        Master.update_all "user_id = #{user.id}"

  end
end
