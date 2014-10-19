json.array!(@team_memberships) do |team_membership|
  json.extract! team_membership, :team_id, :person_id, :jersey_num
  json.url team_membership_url(team_membership, format: :json)
end