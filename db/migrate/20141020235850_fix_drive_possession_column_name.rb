class FixDrivePossessionColumnName < ActiveRecord::Migration
  def change
  	rename_column :drives, :possession_id, :team_id
  end
end
