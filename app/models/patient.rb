class Patient < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
  validates :notes, presence: true, length: { minimum: 10 }
  validates :image_url, presence: true

  has_many :drugs
  belongs_to :user
end
