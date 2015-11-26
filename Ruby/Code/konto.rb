#a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft wert. Auf diese Eigenschaft ist lesend und schreibend zugzugreifen. Die Eigenschaft soll beim EInlegen eines neuen Objektes gefüllt werden. Legen Sie einen kredit_1 mit dem Wert 5000 an und einem kredit_2 mit dem Wert 2000
class Kredit
	attr_accessor :wert
	def initialize(pwert)
		@wert = pwert
	end
end
kredit_1 = Kredit.new(5000)
kredit_2 = Kredit.new(2000)
#1.  Klasse Kunde
#1a. Legen Sie eine Eigenschaft name und adresse in der Klasse Kunde an. Für die Eigenschaft name gibt es einen Lese- und Schreibzugriff, fuer die Eigenschaft adresse einen Schreibzugriff.
#b. Die Eigenschaft name enthält den Vor- und Zunamen des Kunden. Diese Eigenschaft wird beim Anlegen des Objektes übergeben. Schreiben Sie den entsprechenden Konstruktor.
#c. Erzeugen Sie ein Objekt mit dem Namen 'kunde1' und dem Initialwert: 'Theo Sommer' 
#d. Ändern Sie die Eigenschaft 'name' des Objektes in: 'Theo Sonnenschein'
#e. Schreiben Sie den Befehl, der den Namen auf der Konsole ausgibt.
#g. Die Eigenschaft adresse bekommt folgenden String uebergeben: Hermelinweg 11, 22159 Hamburg
#h. Schreiben Sie eine  Getter-Methode' für die Klasse Kunde, für die Eigenschaft adresse die folgende Ausgabe produziert: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg.'  und geben sie das auf der Konsole aus.
#i. Legen Sie eine Eigenschaft kredite an, die im Konstruktor als Array initialisiert wird.
#j. Schreiben Sie eine Methode, die das Objekt kredit_1 und dann kredit_2 in der Eigenschaft kredite speichert. Diese Methode soll set_kredit heißen und bekommt einen Parameter. Füllen Sie die Eigenschaft mit den beiden Werten.
#k. Erstellen Sie eine Methode show_kredite, die folgende AUsgabe erzeugt:
#Theo SOnnenschein, Hermelinweg 11 22159 Hamburg hat folgende Kredite:
#Kredit 1: 5000
#Kredit 2: 2000

class Kunde
	attr_accessor :name, :gehalt
	attr_writer :adresse

	def initialize(pname)
		@name = pname
		@kredite = []
	end
	def show_kredite
		puts "#{@name}, #{@adresse} hat folgende Kredite:"
		@kredite.each.with_index(1) do |k,i|
			puts "Kredit #{i}: #{k.wert}"
		end
	end
	def set_kredit(pkredit)
		@kredite << pkredit
	end
	def to_s
		@name
	end
end 

kunde_1 = Kunde.new("Theo Sommer")
kunde_1.name = "Theo Sonnenschein"
puts kunde_1.name
kunde_1.adresse = "Hermelinweg 11 22159 Hamburg"
kunde_1.set_kredit(kredit_1)
kunde_1.set_kredit(kredit_2)
kunde_1.show_kredite