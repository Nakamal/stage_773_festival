class Person < ApplicationRecord
  has_many :festival_applications
  has_many :performers, through: :festival_applications
  has_many :schedule_slots, :festival_applications
end
