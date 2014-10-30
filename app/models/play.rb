# == Schema Information
#
# Table name: plays
#
#  id                :integer          not null, primary key
#  number            :integer
#  down              :integer
#  distance          :integer
#  hashmark          :string(255)
#  los               :integer
#  formation         :string(255)
#  playcall          :string(255)
#  rusher            :integer
#  passer            :integer
#  receiver          :integer
#  result            :string(255)
#  deltayards        :integer
#  comments          :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  drive_id          :integer
#  play_type         :string(255)
#  direction         :string(255)
#  complete          :boolean
#  penalty           :boolean
#  penalty_call      :string(255)
#  penalty_against   :string(255)
#  offender          :integer
#  penalty_yards     :integer
#  first_down        :boolean
#  fumble_lost       :boolean
#  interception      :boolean
#  touchdown         :boolean
#  sack              :boolean
#  failed_conversion :boolean
#  fg_good           :boolean
#  kick_distance     :integer
#

class Play < ActiveRecord::Base
	belongs_to :drive
	belongs_to :game
end
