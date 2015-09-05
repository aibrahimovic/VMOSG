class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :description
      t.string :web
      t.string :phone
      t.string :image

      t.timestamps null: false
    end
  end
end
