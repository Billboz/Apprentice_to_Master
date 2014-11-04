class SetupUsers < ActiveRecord::Migration
  def change
        user = User.first

        Master.update_all "user = #{user}"

  end
end
