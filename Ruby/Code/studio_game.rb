class Player
	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end
	def to_s
		"Der Spieler #{@name} hat #{@health} Punkte"
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

player1 = Player.new('Theo', 99)
player2 = Player.new('Peter')

puts player2
puts player2.name
player2.w00t
player2.w00t
puts player2
player1.blam
puts player1