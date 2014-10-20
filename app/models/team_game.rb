# == Schema Information
#
# Table name: team_games
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  game_id    :integer
#  home_team  :boolean
#  away_team  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class TeamGame < ActiveRecord::Base
	belongs_to :team
	belongs_to :game
end
