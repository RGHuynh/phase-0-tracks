# Get hamster name
print "What's the hamster name?: "
hamster_name = gets.chomp

# Volumn level of the hamster
print "What's the hmaster volumn level would you like?(1 to 10): "
hamster_volumn_lvl = gets.chomp.to_f

# fur color
print "What's the fur color do you want?: "
hamster_fur_clr = gets.chomp

# Whether the hamster is a good candidate for adoption
print "Do you think the hamster is good for adoption?: "
user_adoption_input = gets.chomp

# estimate age
print "What is the estimate age of the hamster?: "
hamster_est_age = gets.chomp.to_i

# print summary

puts "Hamster name: #{hamster_name}"
puts "Hamster volumn prefered: #{hamster_volumn_lvl}"
puts "Hamster fur color: #{hamster_fur_clr}"
puts "Client oppinion on adoption: #{user_adoption_input}"
puts "Hamster estimate age: #{hamster_est_age}"
