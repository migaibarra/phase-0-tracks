## Vampire Text Program for Exercise 4.5
#  Authored by Miguel A. Ibarra, Jr.

puts "Hello welcome to Werewolf Inc. where we own the moonlight! We are in need of more werewolves."

puts "How many employees will be processed?"
num_of_employees = gets.chomp.to_i # Setting the counter for the number of surveys that will be done.

# Initializing the survey results for all employees

Name = Array.new(num_of_employees)
age = Array.new(num_of_employees)
birthyear = Array.new(num_of_employees)
garlic_bread_resp = Array.new(num_of_employees)
insurance_resp = Array.new(num_of_employees)
result = Array.new(num_of_employees)
allergies = Array.new(num_of_employees)

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

  puts "Do you have any allergies? (Y/N)" # Prompting for any suspicious allergies
  allergy_response = gets.chomp # Obtaining response'
  allergy_counter = 0 # initializing an allergy counter
  allergy = Array.new(0)

  while allergy_response == "Y"
    puts "What allergy do you have?"
    allergy.push(gets.chomp)
    puts "Do you have more alleries or are you done? (answer Y or Done)"
    allergy_response = gets.chomp # Reseting the person's response
    allergy_counter += 1
  end

  allergies[num_of_employees-1] = allergy


  ## LOGIC PORTION ##

  # The following logic tries to determine if the user is a vampire or not

  # First checking if the person's name gives them away
  if Name[num_of_employees-1] == "Drake Cula" || Name[num_of_employees-1] == "Tu Fang"
    result[num_of_employees-1] = "Definitely a vampire."

  # Next checking if the person's age matches with what is expected for their birthyear and if they like garlic bread
  elsif age[num_of_employees-1] != (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "N" && insurance_resp[num_of_employees-1] == "N" # if the age doesn't match year and they don't like garlic bread
    result[num_of_employees-1] = "Almost certainly a vampire." # They are almost certainly a vampire

  # Next checking to see if the person has told us if they have suspecious allergies
  elsif allergy.include? "sunshine" # Checking if the person responded with a suspicious allergy to sunshine
    result[num_of_employees-1] = "Probably a vampire."

  # Checking again if the person's age matches with what is expected for their birthyear and if they like garlic bread
  elsif (age[num_of_employees-1] == (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "Y") # if the age does match the year and they do like garlic bread
    result[num_of_employees-1] = "Probably not a vampire." # the person is probably not a vampire

  # More logic to check the person's age, year and garlic bread preference
  elsif age[num_of_employees-1] != (2017 - birthyear[num_of_employees-1]) && garlic_bread_resp[num_of_employees-1] == "N" # if the person's age doesn't match their year but they do not like garlic bread
    result[num_of_employees-1] = "Probably a vampire." # They are probably a vampire

  # All other combinations of answers to the questions are indeterminate and we can't figure out if they are a vampire
  else
    result[num_of_employees-1] = "Results inconclusive."
  end

  ## END OF LOGIC ##

  # Outputing the vampire determination
  puts result[num_of_employees-1]

  # Now subtracting one from the counter
  num_of_employees -= 1
end

# The following was used to check the variables to debug the code
# puts Name
# puts age
# puts birthyear
# puts garlic_bread_resp
# puts insurance_resp
# puts result
# puts allergies