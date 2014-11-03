# == Schema Information
#
# Table name: masters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  domain     :string(255)
#  city       :string(255)
#  state      :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Master < ActiveRecord::Base
  has_many :apprentices
end
