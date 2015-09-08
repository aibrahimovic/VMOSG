class News < ActiveRecord::Base
	has_attached_file :file1
	has_attached_file :file2
	has_attached_file :file3
	validates_attachment :file1, :file2, :file3, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
