## Vampire Text Program for Exercise 4.5
#  Authored by Miguel A. Ibarra, Jr.

puts "Hello welcome to Werewolf Inc. where we own the moonlight! We are in need of more werewolves."

puts "What is your name?"

Name = gets.chomp # Prompting the individual to type their name and assigning it to a variable called Name

puts "What is your age?"

age = gets.chomp.to_i # Prompting the individual for their age and converting to an integer value before assigning to the age variable

puts "Also what year were you born?"

birthyear = gets.chomp.to_i # Prompting for and assigning the birthyear variable

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"

garlic_bread_resp = gets.chomp # Prompting and assigning the response for garlic bread

puts "Would you like to enroll in the company's health insurance? (Y/N)"

insurance_resp = gets.chomp # Promping and assigning the response for health insurance

if age == (2017 - birthyear) && garlic_bread_resp == "Y"
  result = "Probably not a vampire."
elsif age != (2017 - birthyear) && garlic_bread_resp == "N"
  result = "Probably a vampire."
elsif age != (2017 - birthyear) && garlic_bread_resp == "N" && insurance_resp == "N"
  result = "Almost certainly a vampire."
elsif name == "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."

puts result

