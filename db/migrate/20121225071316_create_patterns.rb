class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :question,null: false
      t.string :image,null: false


      t.timestamps
    end
  end
end
