puts "What's the hamster's name?"

hamster_name = gets.chomp

puts "How loud is this hamster on a scale of 1 to 10?"

volume_level = gets.chomp

puts "What color fur does this hamster have?"

fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (Y/N)"

good_candidate = gets.chomp

puts "About how old is this hamster?"

estimated_age = gets.chomp

if estimated_age.empty?
  estimated_age = nil
else
end

puts "#{hamster_name}"
puts "#{volume_level}"
puts "#{fur_color}"
puts "#{good_candidate}"
puts "#{estimated_age}"