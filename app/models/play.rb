# == Schema Information
#
# Table name: plays
#
#  id         :integer          not null, primary key
#  number     :integer
#  down       :integer
#  distance   :integer
#  hashmark   :string(255)
#  los        :integer
#  formation  :string(255)
#  playcall   :string(255)
#  rusher     :integer
#  passer     :integer
#  receiver   :integer
#  result     :string(255)
#  deltayards :integer
#  comments   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  drive_id   :integer
#

class Play < ActiveRecord::Base
	belongs_to :drive
	belongs_to :game
end
