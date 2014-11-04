# == Schema Information
#
# Table name: apprentices
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  master_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Apprentice < ActiveRecord::Base
  belongs_to :master
  belongs_to :user
end
