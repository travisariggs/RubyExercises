class Card

  attr_reader :value, :suit

  def initialize(value, suit)
    # Input:
    #  face = 'Ace', 'King', 'Queen', 'Jack', 1', '2', '3', '4'...
    #  suit = "Club", Diamond", "Heart" or "Spade"
    @value = value.to_s
    @suit = suit.to_s
  end

  def show
    "#{value} of #{suit}s"
  end

  def eql?(another_card)
    suit == another_card.suit && value == another_card.value
  end

  def ==(another_card)
    suit == another_card.suit && value == another_card.value
  end

end


class Hand < Array

  def add_card(card)
    self << card
  end

  def cards
    self
  end

end


class BlackjackHand < Hand

  attr_accessor :total

  def initialize
    @total = 0
  end

  def calculate

    current_total = 0
    ace_count = 0

    self.each do |card|

      if ['King', 'Queen', 'Jack'].include?(card.value)
        current_total += 10
      elsif card.value == 'Ace'
        ace_count += 1
      else
        current_total += card.value.to_i
      end

    end

    # Add the Aces as 11's
    current_total += ace_count * 11

    # Check to see if it's a bust
    #  and reduce the '11' to a '1'
    #  until we run out of aces or
    #  the total goes 21 or below
    if current_total > 21

      ace_count.times do

        # Change the 11 to a 1
        current_total -= 10

        # Check the total again
        if current_total <= 21
          break
        end

      end

    end

    # We've now changed as many aces
    #  to values of 1's that we could,
    #  (if we had any at all)
    # Be sure to store the total to the object
    self.total = current_total

  end

  def status

    calculate

    if total == 21
      status = 'Blackjack'
    elsif total > 21
      status = 'Bust'
    else
      status = 'Playing'
    end

  end

end


a_hand = BlackjackHand.new

# Add some cards
a_hand.add_card(Card.new('2', 'Heart'))
a_hand.add_card(Card.new('7', 'Spade'))
a_hand.add_card(Card.new('King', 'Spade'))
a_hand.add_card(Card.new('King', 'Club'))

# This should say 'Bust'
puts a_hand.status

