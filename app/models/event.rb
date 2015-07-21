class Event < ActiveRecord::Base
  validates_presence_of :name
  has_many :attendees # 複數
  has_one :location
  belongs_to :category
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
end
