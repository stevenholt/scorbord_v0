class ChangeDriveNumberColumnNametoDriveId < ActiveRecord::Migration
  def change
  		rename_column :plays, :drive_number, :drive_id
  end
end
