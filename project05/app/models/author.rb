class Author < ActiveRecord::Base
	has_many :articles
	validate :name_not_pat
	validates :name, presence: true
	
	has_attached_file :photo,
		:styles => { :thumb => "100x100#", :small => "150x150>" }
		
	private
		def name_not_pat
			if name.downcase.include? "pat"
				errors.add(:name, 'Pat is not allowed anywhere in the string, in any case!')
			end
		end
end
