json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :name, :start_day_weekly, :slot_unit_size, :day_start_time, :day_end_time
  json.url timetable_url(timetable, format: :json)
end
