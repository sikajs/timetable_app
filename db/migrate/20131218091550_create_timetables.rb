class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :name
      t.boolean :start_day_weekly
      t.integer :slot_unit_size
      t.time :day_start_time
      t.time :day_end_time

      t.timestamps
    end
  end
end
