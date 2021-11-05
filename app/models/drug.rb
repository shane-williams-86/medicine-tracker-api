class Drug < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :frequency, presence: true, length: { minimum: 5 }
  validates :image_url, presence: true, uniqueness: true
  validates :notes, presence: true, length: { minimum: 5 }

  belongs_to :patient
end
