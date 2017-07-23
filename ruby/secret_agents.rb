# Number 1: Encrypt Method

# Define password variable

# puts "Please enter a new password:"

# password = gets.chomp

index = 0

# Loop through password variable looking at each character
  # Define output to a new variable moving forward one letter

def encrypt_method(arg, index)
  while index < arg.length
    arg[index] = arg[index].next
    index += 1
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
    arg[index] = (arg[index].ord - 1).chr
    index += 1
  end
  puts arg
end

# decrypt_method(encrypted_password, index)

encrypt_method("abc", index)
encrypt_method("zed", index)
decrypt_method("bcd", index)
decrypt_method("afe", index)