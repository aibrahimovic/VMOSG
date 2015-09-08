class Project < ActiveRecord::Base
	has_attached_file :avatar, styles: { 
		big: "1000x1000>",
		medium: "800x800>", 
		thumb: "100x100>" 
		}
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
