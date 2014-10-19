json.array!(@team_games) do |team_game|
  json.extract! team_game, :team_id, :game_id, :home_team, :away_team
  json.url team_game_url(team_game, format: :json)
end