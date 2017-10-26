module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily
    puts "crazy!!"
  end
end

p Shout.yell_angrily("hey")
p Shout.yelling_happily
