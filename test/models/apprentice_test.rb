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

require 'test_helper'

class ApprenticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
