# == Schema Information
#
# Table name: drives
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  team_id    :integer
#  start_time :integer
#  end_time   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Drive < ActiveRecord::Base
	belongs_to 	:game
	has_many 	:plays
	belongs_to	:team
end
