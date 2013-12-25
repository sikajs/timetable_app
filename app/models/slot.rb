class Slot < ActiveRecord::Base
  validates :title, :timetable_id, presence: true
  
  belongs_to :timetable
end
