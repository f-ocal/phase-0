accountables = [

	"Syema Ailia",
	"Alan Alcesto",
	"Daniel Andersen",
	"James Artz",
	"Darius Atmar",
	"Brian Bensch",
	"Nicola Beuscher",
	"Kris Bies",
	"Logan Bresnahan",
	"William Brinkert",
	"Scott Chou",
	"Bernice Anne W Chua",
	"Abraham Clark",
	"Jon Clayton",
	"Kevin Corso",
	"Jacob Crofts",
	"Amaar Fazlani",
	"Solomon Fernandez",
	"Edward Gemson",
	"Jamar Gibbs",
	"Chris Gomes",
	"Will Granger",
	"Christopher M. Guard",
	"Ryan Ho",
	"Igor Kazimirov",
	"Walter Kerr",
	"Karla King",
	"Nruthya Lakshminarasimhan",
	"Becky Lehmann",
	"Malia Lehrer",
	"Carolina Medellin",
	"Timothy Meixell",
	"Lorena Mesa",
	"Chris Miklius",
	"Joshua Monzon",
	"Morgan McCrory",
	"Shea Munion",
	"Bryan Munroe",
	"Neal Peters",
	"Trevor Newcomb",
	"Aleksandra Nowak",
	"Fatma Ocal",
	"Van Phan",
	"Luis Fernando Plaz",
	"Natalie Polen",
	"Alicia Quezada",
	"Jessie Richardson",
	"Nimi Samocha",
	"Sara Taurchini",
	"Zach Schatz",
	"Tal Schwartz",
	"Pratik Shah",
	"Josh Shin",
	"Shawn Spears",
	"Nil Thacker",
	"Natasha Thapliyal",
	"Sabrina Unrein",
	"Brian Wagner",
	"Clinton Weber",
	"Gregory Wehmeier",
	"Michael Welpley",
	"Alexander Williams",
	"Peter N Wood",
	"Caitlyn Y.",
	"Ryan Zell"
]

@ta_array = [
	"Gary S.",
	"Iulia S.",
	"Celeen R.",
	"Morgan O.",
	"Adell H.",
	"James H.",
	"Matt H.",
	"Michael H.",
	"Peter H.",
	"John D.",
	"Katy D.",
	"Laura C.",
	"Caroline A."
]

def accountability_group_maker(accountables)
	puts "Accountability Group One"
	puts accountables[0..4]
	puts '-' * 10
	puts "Accountability Group Two"
	puts accountables[5..9]
	puts '-' * 10
	puts "Accountability Group Three"
	puts accountables[10..14]
	puts '-' * 10
	puts "Accoutability Group Four"
	puts accountables[15..19]
	puts '-' * 10
	puts "Accoutability Group Five"
	puts accountables[20..24]
	puts '-' * 10
	puts "Accoutability Group Six"
	puts accountables[25..29]
	puts '-' * 10
	puts "Accoutability Group Seven"
	puts accountables[30..34]
	puts '-' * 10
	puts "Accoutability Group Eight"
	puts accountables[35..39]
	puts '-' * 10
	puts "Accoutability Group Nine"
	puts accountables[40..44]
	puts '-' * 10
	puts "Accoutability Group Ten"
	puts accountables[45..49]
	puts '-' * 10
	puts "Accoutability Group Eleven"
	puts accountables[50..54]
	puts '-' * 10
	puts "Accoutability Group Twelve"
	puts accountables[55..59]
	puts '-' * 10
	puts "Accoutability Group Thirteen"
	puts accountables[60..64]
	puts '-' * 10

	end

accountability_group_maker(accountables)

# REFACTOR

def accountability_group_maker_random(accountables)
	puts "Accountability Group One"
	puts accountables.to_a.sample(5)
	puts "Your T.A.s for this group are:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accountability Group Two"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accountability Group Three"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Four"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Five"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Six"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Seven"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Eight"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Nine"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Ten"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Eleven"
	puts accountables.to_a.sample(5)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Twelve"
	puts accountables.to_a.sample(4)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
	puts "Accoutability Group Thirteen"
	puts accountables.to_a.sample(4)
	puts "Your T.A for this group is:"
	puts @ta_array.to_a.sample(1)
	puts '-' * 10
end

#Refactored

def randomized_list_generator(accountables)
	randomized_array_unsplit = accountables.to_a.shuffle
	randomized_order = randomized_array_unsplit.each_slice(5).to_a
	p randomized_order
end
 accountability_group_maker(accountables)
 accountability_group_maker_random(accountables)
 randomized_list_generator(accountables)
