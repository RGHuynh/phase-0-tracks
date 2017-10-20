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

  def initializ
    puts "Initializing new puppy instance ..."
  end
end

bobby = Puppy.new

# bobby.fetch("tree")
bobby.bark(3)
bobby.rollover

bobby.dog_years(4)

bobby.jump(4)
bobby.initializ
