# Erzeugen Sie folgende Ausgabe:
# Larry has a health of 60.
# CURLY has a health of 125.
# *************Moe has a health of 100.*************
# *************Moe has a health of 100.*************
# Shemp......................... 90 health
# Shemp......................... 90 health
# Players:
#         Larry
#         Curly
#         Moe
# The game started on Thursday 08/02/2012 at 11:42AM

name1 = 'larry'
health1 = 60

puts "#{name1.capitalize} has a health of #{health1}"

puts "#{name1.capitalize} has a health of #{health1}".center(40, '*')

puts "#{name1.capitalize.ljust(30,'.')} #{health1} health"