require 'pry'

def select_cards(possible_cards, hand)
  # Make sure the user can't pick up more than three cards.
  # Make sure the user must pick up exactly three cards.
  while hand.length <= 3
    possible_cards.each do |current_card|
      print "Do you want to pick up #{current_card}?"
      answer = gets.chomp
      if answer.downcase == 'y'
        hand << current_card
      end
    end
    return hand
  end
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
