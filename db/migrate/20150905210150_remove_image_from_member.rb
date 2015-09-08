class RemoveImageFromMember < ActiveRecord::Migration
  def change
    remove_column :members, :image, :string
  end
end
