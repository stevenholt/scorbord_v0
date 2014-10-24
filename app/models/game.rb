# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  date       :date
#  home_team  :integer
#  away_team  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
	has_many :drives
	belongs_to :home_team, :class_name => "Team"
	belongs_to :away_team, :class_name => "Team"
	has_many :plays, through: :drives
end
