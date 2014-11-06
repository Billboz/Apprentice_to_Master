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

  has_secure_password

  validates :name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX},
            uniqueness:  { case_sensitive: false}

  validates :password, length: { minimum: 6 }
  def admin?
    self.role == 'admin'
  end
end
