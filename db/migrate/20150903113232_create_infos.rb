class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
