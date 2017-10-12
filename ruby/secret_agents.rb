# An encrypt method that advances every letter of a string one letter forward
def encrypt_password(pw)

  # make an input variable and find lenght of string -1
  user_password = pw
  pw_length = user_password.length - 1

  # space to put the encrypt pw
  # recontruct it
  encrypt_pw = ""

  # decontruct each letter in the variable
  for pw_breakdown in 0..pw_length
    indv_pw_letter = user_password[pw_breakdown]
    # move each letter one letter forward
    encrypt_pw += indv_pw_letter.next
  end
  encrypt_pw
end

# reenter encrypted code
def decode_pw(encrypted_pw)
  # set alphabet for reference
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  to_decode = encrypted_pw
  decoded_password = ""
  # deconstruct variable
  pw_length = to_decode.length
  for encrypted_pw_breakdown in 1..pw_length
    negative_pw_index = -(encrypted_pw_breakdown)
    pw_indv_num = to_decode[negative_pw_index]
    # match each word to the a..z string
    # minus 1 per index number found
    alpha_search = alphabet.index(pw_indv_num) - 1
    # find the letter in a..z string
    decoded_password += alphabet[alpha_search]
  end
  # recontruct
  rev_pw = decoded_password.reverse
end

# ask user for their password
puts "Enter you password!"
user_pw_input = gets.chomp

secure_pw = encrypt_password(user_pw_input)
