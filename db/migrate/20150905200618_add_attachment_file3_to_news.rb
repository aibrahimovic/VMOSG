class AddAttachmentFile3ToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :file3
    end
  end

  def self.down
    remove_attachment :news, :file3
  end
end
