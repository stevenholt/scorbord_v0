class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :team_id
      t.integer :person_id
      t.integer :jersey_num

      t.timestamps
    end
  end
end
