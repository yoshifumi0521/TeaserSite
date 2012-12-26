class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name,null: false
      t.string :hashed_password,null: false

      t.timestamps
    end
  end
end
