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

require 'spec_helper'

describe TeamGame do
  pending "add some examples to (or delete) #{__FILE__}"
end
