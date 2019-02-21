class FestivalApplication < ApplicationRecord
  belongs_to :person
  has_many :performers
end
