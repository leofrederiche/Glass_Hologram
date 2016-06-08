class Image < ActiveRecord::Base
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/missing-picture.png"
  	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  	belongs_to :user
end
