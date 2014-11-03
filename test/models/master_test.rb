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

require 'test_helper'

class MasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
