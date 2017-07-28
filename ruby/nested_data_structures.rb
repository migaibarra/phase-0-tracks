## This nested data structure is supposed to represent a school
#  Coded by Miguel A. Ibarra, Jr.

# For Grades 1, 3, and 4 I had originally defined hashes which would be used within
# the school hash. Didn't know if you can define a hash within a hash right away

grade_1 = {
	"Teacher:" => "Mrs. Williams",
	"Students:" => ["Charlie", "Anne", "Thomas", "Robby"]
}

grade_3 = {
	"Teachers:" => ["Ms. Lee", "Mrs. Robinson"],
	"Students:" => ["Michael", "Peter", "Heather", "Isabel"]
}

grade_4 = {
	"Teacher:" => "Mrs. Paine",
	"Students:" => ["Lester", "Hector", "Kim"]
}


# Building a hash containing data about a school
school = {
	"Principal:" => "Mr. Deacon",
	"Grade 1:" => grade_1, # Grade 1 defined upstream
	# For Grade 2 notice that was able to put a hash within the shcool hash
	"Grade 2:" => {
		"Teacher:" => "Mr. Mackie",
		"Students:" => ["Sarah", "Maddy", "Mark"]},
	"Grade 3:" => grade_3,
	"Grade 4:" => grade_4
}

# These bits of code access the data within the school hash
puts school["Principal:"]
# > Mr. Deacon

p school["Grade 3:"]["Teachers:"]
# > ["Ms. Lee", "Mrs. Robinson"] 

puts school["Grade 1:"]["Students:"][1]
# > Anne

puts school["Grade 2:"]["Students:"][0]
# > Sarah