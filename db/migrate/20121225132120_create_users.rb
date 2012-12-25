class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,null: false
      t.references :pattern
      t.string :answer,null: false
      t.string :email,null: false

      t.timestamps
    end
    add_index :users, :pattern_id
  end
end
