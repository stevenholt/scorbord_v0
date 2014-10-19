# == Schema Information
#
# Table name: drives
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  possession :integer
#  start_time :integer
#  end_time   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Drive < ActiveRecord::Base
	has_many :plays
end
