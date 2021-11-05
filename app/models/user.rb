class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { minimum: 5 }
  validates :password_digest presence: true, uniqueness: true
  validates :phone_number, presence: true, length: {minimum: 5}
  validates :image_url, presence: true

  has_many :patients
end
