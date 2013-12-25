class Timetable < ActiveRecord::Base
  validates :name, :slot_unit_size, presence: true

  has_many :slots, dependent: :destroy
end
