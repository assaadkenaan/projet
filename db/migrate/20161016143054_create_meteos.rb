class CreateMeteos < ActiveRecord::Migration
  def change
    create_table :meteos do |t|
      t.string :city
      t.integer :temperature

      t.timestamps
    end
  end
end
