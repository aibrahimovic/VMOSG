class AddWhoWhatWhereToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :who, :string
    add_column :infos, :what, :string
    add_column :infos, :where, :string
  end
end
