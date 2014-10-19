# == Schema Information
#
# Table name: team_memberships
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  person_id  :integer
#  jersey_num :integer
#  created_at :datetime
#  updated_at :datetime
#

class TeamMembership < ActiveRecord::Base
	belongs_to :team
	belongs_to :person
end
