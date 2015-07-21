class Attendee < ActiveRecord::Base
  belongs_to :event # 單數
end
