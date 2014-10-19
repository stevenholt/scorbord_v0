json.array!(@games) do |game|
  json.extract! game, :date, :home_team, :away_team
  json.url game_url(game, format: :json)
end