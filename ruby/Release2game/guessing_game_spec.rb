require_relative 'guessing_game'

describe Word_game do
  let(:game) {Word_game.new}

it 'return a hash key' do
  game.player1_word = "tom"
  game.wordToArray
  expect(game.word_hash).to include "0"
end

it "replace '_' with letter" do
  game.player1_word =  "tom"
  game.wordToArray
  expect(game.p2_guess("t")).to eq ["t"]
  expect(game.repeated_guess).to include "t"
end
end
