class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def bark(count)
    count.times do |i|
      puts "Woof!"
    end
  end

  def rollover
    puts "rollover"
  end

  def dog_years(human_years)
    # take human_years and times it by dog year
    dog_yr = human_years * 5
    puts dog_yr
  end

  def jump(times)
    for n in 1..times
      if n < times
        puts "Yay! I'm doing a back flip"
      else
        puts "Gog i'm tired"
      end
    end
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

bobby = Puppy.new

# bobby.fetch("tree")
bobby.bark(3)
bobby.rollover

bobby.dog_years(4)

bobby.jump(4)
bobby

class Monkey
  def initialize
    puts "What is my name?"
    monkey_name = gets.chomp
    puts "So my name is #{monkey_name}"
  end

  def throw_poop(number)
    number.times do |t|
      if t < (number - 1)
        puts "You got hit by poop!"
      else
        puts "You dodge it!"
      end
    end
  end

  def back_flips(command)
    if command == "flip"
      puts "monkey flipped!"
    else
      puts "monkey flipped you off"
    end
  end

  def talk
    puts "What do you want boy!"
  end
end

crazy_monkey = Monkey.new
crazy_monkey.throw_poop(3)
crazy_monkey.back_flips("flip")
