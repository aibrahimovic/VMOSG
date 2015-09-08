class AddAttachmentFile2ToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :file2
    end
  end

  def self.down
    remove_attachment :news, :file2
  end
end
