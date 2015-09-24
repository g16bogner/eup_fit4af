class Movie
	attr_reader :title, :rank

	def initialize(ptitle, prank=50)
		@title = ptitle.capitalize
		@rank = prank
	end
	def title=(title)
		@title = title.capitalize
	end
	def normalized_rank
		@rank / 100
	end
	def thumbs_up
		@rank = @rank + 10
	end
	def thumbs_down
		@rank = @rank -10
	end
	def to_s
		"Der Film #{@title} hat den Rank: #{normalized_rank}"
	end
end

movie1 = Movie.new("batman", 40)
movie2 = Movie.new("spiderman")
movie3 = Movie.new('superman')
movies = [movie1, movie2, movie3]
movies.each do |movie|
	puts movie
end

