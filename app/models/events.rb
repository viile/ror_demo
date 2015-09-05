class Event < ActiveRecord::Base
  validates_paresence_of :name
  has_many :attendees
end
