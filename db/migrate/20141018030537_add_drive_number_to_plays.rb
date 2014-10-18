class AddDriveNumberToPlays < ActiveRecord::Migration
  def change
    add_column :plays, :drive_number, :integer
  end
end
