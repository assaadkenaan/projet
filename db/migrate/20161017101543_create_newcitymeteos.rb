class CreateNewcitymeteos < ActiveRecord::Migration
  def change
    create_table :newcitymeteos do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.float :temperature
      t.string :summary

      t.timestamps
    end
  end
end
