class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance...."
    @user_gender = gender
    @user_ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner", "Blizten"]
    @age = 0
  end

  def speak
    puts "Ho,ho, ho! Haaaaapy holiday"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end


# empty container for the Santa collection
santas = []
gender = ["agender","female","bigender","male", "female","gender fluid", "N/A"]
ethnicity = ["black","Latino","white","Japanese","prefer not to say","Mystical Creature(unicorn)","N/A"]

gender.length.times do |time|
  santas << Santa.new(gender[time],ethnicity[time])
end

gender2 = ["cat","dog","fat"]
ethnicity2 = ["crazy","wild","cookie"]

# combine each of gender2 with ethnicity2 one by one
gender2.length.times do |t|
  santas << Santa.new(gender2[t], ethnicity2[t])
end
