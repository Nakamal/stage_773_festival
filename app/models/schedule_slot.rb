class ScheduleSlot < ApplicationRecord
  belongs_to :main_eventable, polymorphic: true
  has_one :festival, through: :main_eventable # check this one
end
