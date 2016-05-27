class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :code
      t.string :area
      t.string :team
      t.datetime :startdate
      t.integer :week
      t.string :shift
      t.string :month
      t.string :year
      t.string :supervisor
      t.string :summaty
      t.string :category
      t.string :activity
      t.float :hours

      t.timestamps
    end
  end
end
