## Vampire Text Program for Exercise 4.5
#  Authored by Miguel A. Ibarra, Jr.

puts "Hello welcome to Werewolf Inc. where we own the moonlight! We are in need of more werewolves."

puts "How many employees will be processed?"
num_of_employees = gets.chomp.to_i # Setting the counter for the number of surveys that will be done.

# Initializing the survey results

Name = Array.new(num_of_employees)
age = Array.new(num_of_employees)
birthyear = Array.new(num_of_employees)
garlic_bread_resp = Array.new(num_of_employees)
insurance_resp = Array.new(num_of_employees)
result = Array.new(num_of_employees)

for num_of_employees in 1..num_of_employees # Creating a for loop to collect survey results
  puts "What is your name?"

  Name[num_of_employees-1] = gets.chomp # Prompting the individual to type their name and assigning it to a variable called Name

  puts "What is your age?"

  age[num_of_employees-1] = gets.chomp.to_i # Prompting the individual for their age and converting to an integer value before assigning to the age variable

  puts "What year were you born?"

  birthyear[num_of_employees-1] = gets.chomp.to_i # Prompting for and assigning the birthyear variable

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"

  garlic_bread_resp[num_of_employees-1] = gets.chomp # Prompting and assigning the response for garlic bread

  puts "Would you like to enroll in the company's health insurance? (Y/N)"

  insurance_resp[num_of_employees-1] = gets.chomp # Promping and assigning the response for health insurance

  # The following logic tries to determine if the user is a vampire or not
  if Name[num_of_employees-1] == "Drake Cula" || Name[num_of_employees-1] == "Tu Fang"
    result[num_of_employees-1] = "Definitely a vampire."
  elsif age[num_of_employees-1] == (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "Y"
    result[num_of_employees-1] = "Probably not a vampire."
  elsif age[num_of_employees-1] != (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "N" && insurance_resp[num_of_employees-1] == "N"
    result[num_of_employees-1] = "Almost certainly a vampire."
  elsif age[num_of_employees-1] != (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "N"
    result[num_of_employees-1] = "Probably a vampire."
  else
    result[num_of_employees-1] = "Results inconclusive."
  end

  # Outputing the vampire determination
  puts result[num_of_employees-1]

  # Now subtracting one from the counter
  num_of_employees -= 1
end

# The following was used to debug the code
# puts Name
# puts age
# puts birthyear
# puts garlic_bread_resp
# puts insurance_resp
# puts result
