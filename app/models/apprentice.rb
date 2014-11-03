# == Schema Information
#
# Table name: apprentices
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  city        :string(255)
#  master_name :string(255)
#  master_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Apprentice < ActiveRecord::Base
  belongs_to :master

  def name_of_master(master)
    Master.find(master).name
  end

end
