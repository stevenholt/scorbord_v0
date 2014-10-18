class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.integer :game_id
      t.integer :possession
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
