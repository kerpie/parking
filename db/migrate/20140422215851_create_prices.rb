class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :parking_space_id
      t.integer :renting_type_id

      t.timestamps
    end
  end
end
