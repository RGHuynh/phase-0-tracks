print "how many employees?: "
n = gets.chomp

for employees in 1..n.to_i
  # Ask for user name
  print "What is your name?: "
  user_name = gets.chomp

  # Ask user how old are they
  print "How old are you?: "
  user_age = gets.chomp

  # Ask user what year were they born
  print "What year were you born?: "
  user_year_born = gets.chomp

  # test age t/f
  current_year = Time.now.year
  user_est_age = current_year - user_year_born.to_i

  # Ask user about galic bread
  print "Our company cafeteria serves garlic bread. Should we order some for you?(y/n):"
  order_answer = gets.chomp

  # Ask user about insurance plan
  print "Would you like to enroll in the company health insurance?(y/n): "
  user_enrollment_ans = gets.chomp

  # allergies question
  def goto_end
    puts "Probably a vampire."
  end

  user_answer = Array.new

  until user_answer.include?('done') || user_answer.include?('sunshine')
    puts "Do you have any allergies?"
    user_answer.push(gets.chomp)
  end

  user_answer.delete('done')

  if !user_answer.include?('sunshine')
    puts case
    when user_est_age.to_s != user_age && order_answer == "n" && user_enrollment_ans == "n" && user_name == "Drake Cula" || user_name == "Tu Fang"
      puts "Definitely a vampire."
    when user_est_age.to_s == user_age && order_answer == "y"
      puts "Probably not a vampire."
    when (user_est_age.to_s != user_age && order_answer == "n") && user_enrollment_ans == "n"
      puts "Almost certainly a vampire."
    when user_est_age.to_s != user_age && (order_answer == "n" || user_enrollment_ans == "n")
      puts "Probably a vampire."
    else
      puts "Results inconclusive."
    end
  else
    goto_end
  end
end

# Tell user to forget about interview questions
# Use for loop to add to dot sequence.
dots = "."
for sec in 1..4
  sleep(1)
  puts dots
  dots += "."
end
# print message at the end of loop
puts "\nActually, never mind! What do these questions have to do with anything? Let's all be friends."
