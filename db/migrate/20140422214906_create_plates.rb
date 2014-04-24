class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
