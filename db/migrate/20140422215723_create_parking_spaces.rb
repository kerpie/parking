class CreateParkingSpaces < ActiveRecord::Migration
  def change
    create_table :parking_spaces do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.text :TOS
      t.text :reference
      t.integer :user_id
      t.integer :parking_type_id
      t.integer :district_id
      
      t.timestamps
    end
  end
end
