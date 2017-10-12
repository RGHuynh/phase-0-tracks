# An encrypt method that advances every letter of a string one letter forward
# ask user for their password
puts "Make a password."

# make an input variable and find lenght of string -1
user_password = gets.chomp
pw_length = user_password.length - 1

# space to put the encrypt pw
# recontruct it
encypt_pw = ""

# decontruct each letter in the variable
for pw_breakdown in 0..pw_length
  indv_pw_letter = user_password[pw_breakdown]
  # move each letter one letter forward
  encypt_pw += indv_pw_letter.next
end
