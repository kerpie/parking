class CreateRentingTypes < ActiveRecord::Migration
  def change
    create_table :renting_types do |t|
      t.string :name
      t.integer :hours

      t.timestamps
    end
  end
end
