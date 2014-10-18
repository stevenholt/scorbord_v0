json.array!(@plays) do |play|
  json.extract! play, :drive_id, :number, :down, :distance, :hashmark, :los, :formation, :playcall, :rusher, :passer, :receiver, :result, :deltayards, :comments
  json.url play_url(play, format: :json)
end