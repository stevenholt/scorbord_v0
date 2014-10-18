json.array!(@drives) do |drive|
  json.extract! drive, :game_id, :possession, :start_time, :end_time
  json.url drive_url(drive, format: :json)
end