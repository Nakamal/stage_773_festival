class Festival < ApplicationRecord
  has_many :festival_applications, dependent: :destroy
  has_many :events, dependent: :destroy
  
  has_many :event_slots, through: :events, source: :schedule_slots
  has_many :festival_application_slots, through: :festival_applications, source: :schedule_slots
  has_many :performers, through: :festival_applications
  has_many :people, through: :festival_applications
end