class Article < ActiveRecord::Base
	belongs_to :author
	attr_accessor :new_author_name
	
	cattr_reader :per_page
	@@per_page = 10
	
	validates :title, :body, presence: true
	
	before_update :increment_edits
	before_save :create_new_author
	
	private
		def increment_edits
			self.edits = self.edits + 1
		end
	
		def create_new_author
			create_author(:name => new_author_name) unless new_author_name.blank?
		end
end
