class Patient < ApplicationRecord
  has_many :drugs
  belongs_to :user
end
