class FileDiff < ActiveRecord::Base
  attr_accessible :doc_current, :doc_origin

  has_attached_file :doc_current, :url => :url_attached_file, :path => :path_attached_file 
  has_attached_file :doc_origin, :url => :url_attached_file, :path => :path_attached_file
  # validates_attachment :doc_current, :content_type => "text/plain",
  # validates_attachment :doc_origin, :content_type => "text/plain"
  validates_attachment_content_type :doc_origin, :content_type => "text/plain"
  validates_attachment_content_type :doc_current, :content_type => "text/plain"


  def url_attached_file
		"/system/:id/:basename.:extension"
	end

	def path_attached_file
		":rails_root/public/system/:id/:basename.:extension"
	end
end
