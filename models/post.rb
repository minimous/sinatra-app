class Post
	attr_accessor :type, :category, :title, :date, :author, :preview, :comment

	def initialize(type, category, title, date, author, preview, comment)
		@type = type
		@category = category
		@title = title
		@date = date
		@author = author
		@preview = preview
		@comment = comment
	end
end