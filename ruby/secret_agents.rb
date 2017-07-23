# Number 1: Encrypt Method

# Define password variable

# puts "Please enter a new password:"

# password = gets.chomp

index = 0

# Loop through password variable looking at each character
  # Define output to a new variable moving forward one letter

def encrypt_method(arg, index)
  while index < arg.length
    if arg[index] == "z"
      arg[index] = "a"
      index += 1
    else
      arg[index] = arg[index].next
      index += 1
    end
  end
  # return arg
  puts arg
end

# encrypt_method(password, index)
# encrypted_password = encrypt_method(password, index)
# encrypted_password = "vojdpso"

# Number 2: Decrypt Method

# Take encrypted variable

# Loop through password variable looking at each character
  # Define output to a new variable moving backwards one letter

def decrypt_method(arg, index)
  while index < arg.length
    if arg[index] == "a"
      arg[index] = "z"
      index += 1
    else
      arg[index] = (arg[index].ord - 1).chr
      index += 1
    end
  end
  puts arg
end

# decrypt_method(encrypted_password, index)

# encrypt_method("abc", index)
# encrypt_method("zed", index)
# decrypt_method("bcd", index)
# decrypt_method("afe", index)

# decrypt_method(encrypt_method("swordfish", index), index)

# For any secret agents:

# To make the decrypt_method(encrypt_method(arg, index), index) work, note that the encrypt_method needs to output a variable which is accomplished by the 'return' key line 24. To output the results of the encrypt method only, please comment out line 25.

puts "Would you like me to encrypt or decrypt a password?"

result = gets.chomp

puts "What is the password? (only use lowercase letters)"

password = gets.chomp

if result == "encrypt"
  encrypt_method(password, index)
elsif result == "decrypt"
  decrypt_method(password, index)
else
end


