class MakeSlotsBelongToTimetable < ActiveRecord::Migration
  def change
    change_table :slots do |t|
      t.remove :timetables_id
      t.belongs_to :timetable
    end
  end
end
