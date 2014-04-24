class CreateAdditionalData < ActiveRecord::Migration
  def change
    create_table :additional_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
