class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.integer :additional_data_id
      t.integer :parking_space_id

      t.timestamps
    end
  end
end
