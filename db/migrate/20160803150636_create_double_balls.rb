class CreateDoubleBalls < ActiveRecord::Migration[5.0]
  def change
    create_table :double_balls do |t|
      t.string :period_number
      t.datetime :date
      t.integer :red1
      t.integer :red2
      t.integer :red3
      t.integer :red4
      t.integer :red5
      t.integer :red6
      t.integer :blue
      t.integer :week_num

      t.timestamps
    end
  end
end
