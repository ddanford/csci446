class Article < ActiveRecord::Base
	belongs_to :author
	
	cattr_reader :per_page
	@@per_page = 10
	
	validates :author, :title, :body, presence: true
	
	before_save :create_new_author
	
	private
		def create_new_author
			create_author(:name => new_author_name)
		end
end
