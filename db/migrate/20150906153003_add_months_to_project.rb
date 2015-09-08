class AddMonthsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :startMonth, :string
    add_column :projects, :endMonth, :string
  end
end
