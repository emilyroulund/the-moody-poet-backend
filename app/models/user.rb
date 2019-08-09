class User < ApplicationRecord
  has_many :user_poems
  has_many :favorites
  has_many :poems, through: :favorites
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }


end
