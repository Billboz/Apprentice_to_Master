# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  age             :integer
#  apprentice_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  role            :string(25)       default("user")
#  password_digest :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
