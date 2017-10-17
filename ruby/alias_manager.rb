# make a method to move letters in name
def move_letter(name)
  # make data storage of constants and vowels
  vowels = ['a','e','i','o','u']
  constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','y','z']
  # split the argument into individual pieces array
  split_name = name.split('')

  # put array into the .map block to turn array to string
  split_name.map! do |name_to_string|

  # let the modified array pass through case one by one
  case name_to_string

  # use * to splat the array into comparison text
  # filter only vowels letters
  when *vowels
    # use next_letter to move the letters to the next one
    next_letter = vowels.index(name_to_string)
    # make sure if there is any vowels that are u to return to a
    if name_to_string == "u"
      next_letter = 0
    else
      next_letter += 1
    end
    # use this to get the next vowels
    vowels[next_letter]

  # filter through constants
  when *constants
    # use next_letter to move the letters to the next one
    # doesn't matter if the next_letter is reused bc the variable becomes empty after every cycle
    next_letter = constants.index(name_to_string)
    if name_to_string == "z"
      next_letter = 0
    else
      next_letter += 1
    end
    constants[next_letter]
  end
end
end


# make a method to house questions
def user_input

  # store answer
  answer = ""

  # continue input unti quit
  until answer == 'quit'
    puts "What is your first name?"
    first_name = gets.chomp

    puts "What is your last name?"
    last_name = gets.chomp

    new_first_name = move_letter(first_name)
    new_last_name = move_letter(last_name)
    full_name = [new_first_name, new_last_name]

    p full_name.rotate

    puts "do you want to continue?"
    answer = gets.chomp
  end
end

user_input
