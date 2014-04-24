class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.time :start_date
      t.time :end_date
      t.integer :renting_type_id
      t.integer :parking_space_id
      t.integer :user_id

      t.timestamps
    end
  end
end
