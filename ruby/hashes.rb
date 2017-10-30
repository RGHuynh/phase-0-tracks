# Ask user for questions for information
puts "What is the client name?"
user_name = gets.chomp
puts "What is the client age?"
user_age = gets.chomp
puts "How many children do you have?"
user_childern = gets.chomp
puts "What types of decor theme would you like?"
user_decor = gets.chomp

# Make input into Hash
user_account = {
  name: "",
  age: "",
  children: "",
  theme_pref: "",
}

# create a hash to store the information
user_account[:name] = user_name
user_account[:age] = user_age
user_account[:children] = user_childern
user_account[:theme_pref] = user_decor

# print the summary into screen after user finish asnwering questions
p user_account

# Ask if user wants to change anything in the report
puts "What do you want to change?"

user_answer = gets.chomp

if user_answer == "none"

else
  puts "What is the new value?"
  user_account[user_answer.to_sym] = gets.chomp

end
p user_account
