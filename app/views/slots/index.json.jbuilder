json.array!(@slots) do |slot|
  json.extract! slot, :id, :title, :description, :start_time, :end_time
  json.url slot_url(slot, format: :json)
end
