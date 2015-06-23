class PostApp < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :appName, presence: true
	validates :appDetails, presence: true
	validates :appUrl, presence: true, :format => URI::regexp(%w(http https))
end
