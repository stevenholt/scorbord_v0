class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :number
      t.integer :down
      t.integer :distance
      t.string :hashmark
      t.integer :los
      t.string :formation
      t.string :playcall
      t.integer :rusher
      t.integer :passer
      t.integer :receiver
      t.string :result
      t.integer :deltayards
      t.string :comments

      t.timestamps
    end
  end
end
