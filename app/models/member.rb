class Member < ActiveRecord::Base
	has_attached_file :avatar, styles: { 
		verybig: "1200x1200>",
		big: "800x800>",
		medium: "400x400>", 
		small: "200x200>",
		thumb: "100x100>" 
		}, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
