# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily
#     puts "crazy!!"
#   end
# end
#
# p Shout.yell_angrily("hey")
# p Shout.yelling_happily


module Shout
  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yelling_happily
    puts "crazy!!"
  end
end

class Person
  include Shout
end

class CrazyPerson
  include Shout
end

tommy = Person.new
tommy.yell_angrily("crazy")


boby = CrazyPerson.new
boby.yelling_happily
