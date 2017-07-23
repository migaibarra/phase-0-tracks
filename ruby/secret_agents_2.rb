# Number 1: Encrypt Method

# Define password variable

puts "Please enter a new password:"

password = gets.chomp

index = 0

# Loop through password variable looking at each character
  # Define output to a new variable moving forward one letter

def encrypt_method(arg, index)
  while index < arg.length
    arg[index] = arg[index].next
    index -= 1
  end
  puts arg
end

encrypted_password = encrypt_method(password, index)
