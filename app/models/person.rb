# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
	has_many :team_memberships
	has_many :teams, through: :team_memberships
end
