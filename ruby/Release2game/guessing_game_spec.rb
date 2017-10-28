require_relative 'guessing_game'

describe Word_game do
  let(:game) {Word_game.new}


  it "return player 1 word" do
    game.player1_word = "tom"
    expect(game.player1_word).to eq "tom"
  end

  it "split player 1 word to letters" do
    game.player1_word = "tom"
    game.wordToArray
    expect(game.wordToLetters).to eq ['t','o','m']
  end

  it "insert '_' base on how many letter is in player 1 word" do
    game.player1_word = "tom"
    game.wordLength
    expect(game.word).to eq ['_','_','_']
  end

  it "replace '_' with guess letters if it's correct" do
    game.player1_word = "tom"
    game.wordToArray
    game.wordLength
    expect(game.find_index("t")).to eq nil
  end
end
