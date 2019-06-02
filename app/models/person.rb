class Person < ApplicationRecord
  has_many :festival_applications
  has_many :performers, through: :festival_applications
  has_many :schedule_slots, through: :festival_applications

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
