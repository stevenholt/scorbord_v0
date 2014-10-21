class FixDriveColumnName < ActiveRecord::Migration
  def change
  	rename_column :drives, :possession, :possession_id
  end
end
