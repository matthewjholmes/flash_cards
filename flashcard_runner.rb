require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
card_4 = Card.new("What is the capital of Colorado?", "Denver", :Geography)
card_5 = Card.new("What is the capital of California?", "Sacramento", :Geography)
cards = [card_1, card_2, card_3, card_4, card_5]
deck = Deck.new(cards)
round = Round.new(deck)

def start(deck, round)
  puts "Welcome! You're playing with #{deck.count} cards."
  puts "-------------------------------------------------"
  (deck.count).times do
    puts "This is card number #{round.current_card_index} out of #{deck.count}."
    puts "Question: #{round.current_card.question}"
    guess = gets.strip
    most_recent_turn = round.take_turn(guess)
    feedback = most_recent_turn.feedback
    puts feedback
  end
end


start(deck, round)
