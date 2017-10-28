class Word_game
  attr_reader :player1_word, :word
  attr_accessor :player1_word, :wordToLetters
  def initialize
    # store player 1 argument into a variable
    @player1_word
    #array of player 1 letter
    @wordToLetters

    @word = []
  end


  # separate the variable into an array of single letters
  def wordToArray
    @wordToLetters = @player1_word.split('')
  end

  # empty array to store ‘_’ base on the length of the player 1 word
  def wordLength
    length_of_word = @player1_word.length
    # for each of player 1 array
    for eachCount in 1..length_of_word
      # move ‘_’ into empty array
      @word << "_"
    end
  end

  def find_index(guess)
    loop do
      case guess
      when *@wordToLetters
        letter_index = @wordToLetters.index(guess)
        @word[letter_index] = guess
        @wordToLetters.delete_at(letter_index)
      else
        puts "try again"
        break
      end
    end
  end
end
