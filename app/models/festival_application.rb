class FestivalApplication < ApplicationRecord
  belongs_to :person
  belongs_to :festival
  has_many :performers, dependent: :destroy
  has_many :scheduled_slots, as: :main_eventable, dependent: :destroy
end
