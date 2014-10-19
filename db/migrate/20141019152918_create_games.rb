class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.integer :home_team
      t.integer :away_team

      t.timestamps
    end
  end
end
