class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
	#validates :description, :presence => true
 	
 	#validates :user_id, :presence => true
 	#validates_attachment :image, :presence => true

# Validate content type
 validates_attachment_content_type :image, :content_type => /\Aimage/
# Validate filename
 validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
# Explicitly do not validate
end
