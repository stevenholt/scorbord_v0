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

require 'spec_helper'

describe TeamMembership do
  pending "add some examples to (or delete) #{__FILE__}"
end
