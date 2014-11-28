class Article
	attr_accessor :body, :headline, :author

	def initialize(body, author, headline)
		self.body = body
		self.author = author
		self.headline = headline
	end

	def print
		puts headline
		puts body
		puts "By: ",  author

	end
end