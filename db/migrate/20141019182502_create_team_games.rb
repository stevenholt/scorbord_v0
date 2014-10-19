class CreateTeamGames < ActiveRecord::Migration
  def change
    create_table :team_games do |t|
      t.integer :team_id
      t.integer :game_id
      t.boolean :home_team
      t.boolean :away_team

      t.timestamps
    end
  end
end
