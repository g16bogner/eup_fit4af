# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
var_array = (15..20).to_a
# a. geben Sie diese Zahlen in einem Block aus
var_array.each do |z|
	puts z
end
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
puts "_____________________"
var_array.each_with_index do |val,key|
	puts "index: #{val} - Wert: #{key}"
end
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
puts "______________________"
my_hash = Hash.new
var_array.each do |z|
	my_hash[z] = rand(100..200)
end
puts my_hash
# d. Geben Sie diesen Hash anschließend etwa so aus: Index: 15 - Wert: 121
puts "_______________________"
my_hash.each do |key,val|
	puts "Index: #{key} - Wert: #{val}"
end
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
puts "________________________"
my_hash.each do |key,val|
	if val > 150
		puts "Index: #{key} - Wert: #{val} WOW"
	else
		puts "Index: #{key} - Wert: #{val}"
	end
end
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
