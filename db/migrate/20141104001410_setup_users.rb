class SetupUsers < ActiveRecord::Migration
  def change
        user = User.create(name:'Bill Boz', age:'45')

        Master.update_all "user_id = #{user.id}"

  end
end
