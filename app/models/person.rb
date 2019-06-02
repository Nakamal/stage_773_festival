class Person < ApplicationRecord
  has_many :festival_applications
  has_many :performers, through: :festival_applications
  has_many :schedule_slots, through: :festival_applications
end
