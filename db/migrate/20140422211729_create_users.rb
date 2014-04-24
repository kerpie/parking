class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :last_name
      t.date :birthday
      t.string :nickname
      t.string :mobile
      t.string :phone
      t.string :DNI

      t.timestamps
    end
  end
end
