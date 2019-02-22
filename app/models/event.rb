class Event < ApplicationRecord
  has_many :schedule_slots, as: :main_eventable, dependent: :destroy
  belongs_to :festival
end
