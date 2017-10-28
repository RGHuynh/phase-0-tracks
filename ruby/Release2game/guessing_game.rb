class Word_game
  attr_reader :empty_space_word, :one_word, :guess_answer, :word_hash, :repeated_guess
  attr_accessor :player1_word, :letters

  def initialize
    # store player 1 argument into a variable
    @player1_word = ""
    #array of player 1 word to letter
    @letters
    @empty_space_word = []
    @word_hash = {}
    @one_word
    @guess_answer = false
    @repeated_guess = []
  end

  def wordToArray
    # separate the variable into an array of single letters
    @letters = @player1_word.split('')

    # empty array to store ‘_’ base on the length of the player 1 word
    for each_letter in 1..@letters.length
      @empty_space_word << "_"
    end

    for x in 0..(@letters.length - 1)
      @word_hash["#{x}"] = @letters[x]
    end
  end


  def p2_guess(guess)
    keys = @word_hash.map{ |x, y| y == guess ? x :nil}.compact
    keys.each do |t|
      @empty_space_word[t.to_i] = guess
      @one_word = @empty_space_word.join
    end
    @repeated_guess << guess
  end
end


if __FILE__ == $0
puts "Enter player 1 name: "
player1 = gets.chomp

puts "Enter player 2 name: "
player2 = gets.chomp

print "#{player1} please enter your a word: "

user_input = gets.chomp
game = Word_game.new

game.player1_word = user_input
game.wordToArray

guess_count = 0

until guess_count == user_input.length
  puts "Guess the word!!"
  guess = gets.chomp

  case guess

  when *game.repeated_guess
    puts "you already guess that letter"
  else
  game.p2_guess(guess)
  p game.empty_space_word
  guess_count += 1
  p game.one_word
  p game.wordToArray

  end
end

if game.one_word == user_input
  puts "Congrats!!! You got the answer"
  puts "Here is a beer! Cheers!"
else
  puts "Oh lord have mercy #{player2}!"
  puts "You were close...."
  puts "Here's the answer '#{user_input}'"
end
end
