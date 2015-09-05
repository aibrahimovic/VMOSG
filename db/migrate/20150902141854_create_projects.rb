class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :start
      t.string :end
      t.string :image

      t.timestamps null: false
    end
  end
end
