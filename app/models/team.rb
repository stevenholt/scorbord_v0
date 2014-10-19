# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
	has_many :team_memberships
	has_many :people, through: :team_memberships
	has_many :home_games, :class_name => 'Game', :foreign_key => 'home_team'
	has_many :away_games, :class_name => 'Game', :foreign_key => 'away_team'
	has_many :drives
end
