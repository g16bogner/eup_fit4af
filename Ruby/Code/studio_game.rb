class Game

	def initialize(title)
		@title = title
		@player = []
	end
	def add_player(player)
		@player << player
	end
	def play
		puts "There are #{@player.count} players in #{@title}"
		@player.each do |p|
			puts "iN game.play aufgerufene KlASSE: #{p.class} id PLAYER1: #{p.object_id}"
			puts p
		end
		@player.each do |p|
			p.blam
			p.w00t
			p.w00t
			puts p
		end
	end
end

class Player
	attr_accessor :name
	attr_reader :health

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end
	def score
		@health + @name.length
	end
	def to_s
		"Der Spieler #{@name} hat #{@health} Punkte, und einen Score von #{score}"
	end
	def blam
		@health = @health + 10
		puts "#{@name} got blamed"
	end
	def w00t
		@health -= 10
		puts "#{@name} got w00ted"
	end
end
game = Game.new("Knuckleheads")

player1 = Player.new('Theo', 99)
puts "KlASSE: #{player1.class} id PLAYER1: #{player1.object_id}"
game.add_player(player1)

player2 = Player.new('Peter')
player3 = Player.new('Ludmilla')
players = [player1, player2, player3]

#puts "Anzahl Spieler: #{players.count}"
players.each do |player|
	#puts player
	game.add_player(player)
end
game.play