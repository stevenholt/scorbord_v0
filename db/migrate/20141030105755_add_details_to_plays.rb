class AddDetailsToPlays < ActiveRecord::Migration
  def change
  	add_column :plays, :play_type, :string
  	add_column :plays, :direction, :string
  	add_column :plays, :complete, :boolean
  	add_column :plays, :penalty, :boolean
  	add_column :plays, :penalty_call, :string
  	add_column :plays, :penalty_against, :string
  	add_column :plays, :offender, :integer
  	add_column :plays, :penalty_yards, :integer
  	add_column :plays, :first_down, :boolean
  	add_column :plays, :fumble_lost, :boolean
  	add_column :plays, :interception, :boolean
  	add_column :plays, :touchdown, :boolean
  	add_column :plays, :sack, :boolean
  	add_column :plays, :failed_conversion, :boolean
  	add_column :plays, :fg_good, :boolean
  	add_column :plays, :kick_distance, :integer
  end
end
