# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  age           :integer
#  apprentice_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  has_many :apprentices
  has_many :masters

  def admin?
    self.role == 'admin'
  end
end
