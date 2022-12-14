class User < ApplicationRecord
  has_many :spaceships
  
  has_secure_password
  validates :username, presence: true, uniqueness: true
end
