class SetupUsers < ActiveRecord::Migration
  def change
        user_id = User.create(name:'Bill Boz', age:'45')

        Master.update_all "user = #{user_id}"

  end
end
