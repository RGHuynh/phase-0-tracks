class Santa
  attr_reader :user_ethnicity, :age
  attr_accessor :user_gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance...."
    @user_gender = gender
    @user_ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner", "Blizten"]
    @age = rand(140)
  end

  def speak
    puts "Ho,ho, ho! Haaaaapy holiday"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    # take a reindeer name as an argument
    # find reindeer name index
    reindeer_index = @reindeer_ranking.index(reindeer)

    # move it to last place in the reindeer ranking
    reindeer_name = @reindeer_ranking[@reindeer_ranking.index(reindeer)]
    @reindeer_ranking << reindeer_name

    # delete the reindeer name
    @reindeer_ranking.delete_at(reindeer_index)
  end
end

# ask user how many santa do they want
puts "How many santa slaves you want to create?"
slave_amount = gets.chomp.to_i

# set empty container for the Santa collection
santas = []
gender = ["agender","female","bigender","male", "female","gender fluid", "N/A"]
ethnicity = ["black","Latino","white","Japanese","prefer not to say","Mystical Creature(unicorn)","N/A"]

# randomly select values from gender array
  # randomly generate index
  # get length of array
  gender_array_length = gender.length - 1
  ethinic_array_length = ethnicity.length - 1
  random_santas = []
for santa_amount in 1..slave_amount

  ethinic_number = rand(ethinic_array_length)
  gen_number = rand(gender_array_length)

  ran_gender = gender[gen_number]
  ran_ethnicity = ethnicity[ethinic_number]

# randomly select values from ethnicity array
# have the random generated array plug into class argument
  random_santas << Santa.new(ran_gender, ran_ethnicity)
end



random_santas.length.times do |t|
  puts ""
  puts random_santas[t].user_gender
  puts random_santas[t].age
  puts random_santas[t].user_ethnicity
end
