class AddAttachmentFile1ToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :file1
    end
  end

  def self.down
    remove_attachment :news, :file1
  end
end
