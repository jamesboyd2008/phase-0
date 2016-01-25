require "time"

class Table

  attr_accessor :bankroll

  Suites = %w( Hearts Diamonds Clubs Spades )
  Values = (2..10).to_a + %w( J Q K A )
  @@new_deck = []
  Suites.each { |suite| Values.each { |value| @@new_deck << { suite => value }}}
  @@p_spaces = "                                          "
  @@d_spaces = "                         "


  def initialize(bankroll = 0) #decks = 1, players/hands = 1
    @bankroll = bankroll
  end

  def play
    @bet = place_bet
    @prng = Random.new

    d_hand = [@@new_deck[@prng.rand(52)], @@new_deck[@prng.rand(52)]]
    p_hand = [@@new_deck[@prng.rand(52)], @@new_deck[@prng.rand(52)]]

    puts("Dealer's face-up card:   " +
         "#{d_hand[1].values[0]} of #{d_hand[1].keys[0]}")
    puts("Player's hand:                           " +
         "#{p_hand[0].values[0]} of #{p_hand[0].keys[0]}\n" + @@p_spaces +
         "#{p_hand[1].values[0]} of #{p_hand[1].keys[0]}")

    #p_values = value(p_hand.collect { |x| x.values[0] })
    #d_hand_value = value(d_hand.collect { |x| x.values[0] })

    p_hand = p_move(p_hand)

    p_values = value(p_hand.collect { |x| x.values[0] })

    round_over = false
    while round_over == false
      #write a bust?(hand) method
      #puts "p_values: #{p_values.to_s}"
      if (p_values[0] > 21 && p_values[1] == 0) || p_values[1] > 21
        round_over = true
        puts "Player busts."
        #deal again
        break
      end
      puts("Dealer's hand:           " +
           "#{d_hand[0].values[0]} of #{d_hand[0].keys[0]}\n" + @@d_spaces +
           "#{d_hand[1].values[0]} of #{d_hand[1].keys[0]}")
      #write a hand.to_s(which hand) method
      #write class Hand?

      case naturals_check(d_hand, p_hand)
      when 1
        round_over = true
        puts "Dealer wins."
        #skip to next hand for faster execution
        break
      when 0
        #nothing happens
      else
        #blackjack pays 3 to 2
        @bankroll += (2.5 * @bet)
        round_over = true
        puts "BLACKJACK!!!"
        break
      end

      d_hand = d_move(d_hand)

      d_values = value(d_hand.collect { |x| x.values[0] })
      if (d_values[0] > 21 && d_values[1] == 0) || d_values[1] > 21
        @bankroll += 2 * @bet
        round_over = true
        puts "Dealer busts."
        #deal again
        break
      end

      #compare the two hands
      p_values = value(p_hand.collect { |x| x.values[0] })
      d_values = value(d_hand.collect { |x| x.values[0] })
      #simplification of scores. value method should have done this.
      p_values[0] <= 21 ? p_values = p_values[0] : p_values = p_values[1]
      d_values[0] <= 21 ? d_values = d_values[0] : d_values = d_values[1]

      if p_values > d_values
        @bankroll += 2 * @bet
        round_over = true
        puts "Player wins."
      elsif p_values < d_values
        round_over = true
        puts "Dealer wins."
      else
        @bankroll += @bet
        round_over = true
        puts "It's a push."
      end
    end

    if @bankroll == 0
      puts "\n\n\n\n\nThe house always wins!\n\n\n\n\n"
      sleep 1
    else
      #pick up here. make everything new again for next hand.
      play
    end
  end


  #returns a 3-item array. Two potential scores and a string.
  def value(card_values)
    total = [0, 0]

    card_values.each do |num|
      if num.class == Fixnum
        total[0] += num
      elsif num == "A"
        total[0] += 11
        total[1] += 1
      else
        total[0] += 10
      end
    end

    if total[1] != 0
      total[1] += (total[0] - 11)

      total[2] = "#{total[0]} or #{total[1]}"
    else
      total[2] = "#{total[0]}"
    end

    #make it return the only score that counts and not the string
    total
  end

  def p_move(hand)
    p_values = value(hand.collect { |x| x.values[0] })

    while p_values[0] < 21 || (p_values[1] < 21 && p_values[1] > 0)
      puts %Q("h" to hit\n"s" to stay)#\n"d" to double\n"p" to split\n) +
           #%Q("r" to surrender)
      move = gets.chomp

      while !%w( h s d p r ).include?(move)
        puts "Not valid. Try again."
        move = gets.chomp
      end

      #take into account when these are feasible/legal
      if move == "h"
        hand << @@new_deck[@prng.rand(52)]
      elsif move == "s"
        break
      elsif move == "d"
        if @bet <= @bankroll
          @bet += @bet
          @bankroll -= @bet
          puts ""
        else
          puts "insufficient funds"
          hand = p_move(hand)
        end
      elsif move == "p"
        #split.
      else
        bet /= 2
      end

      puts "Player's hand:"
      hand.each do |card|
        puts(@@p_spaces + "#{card.values[0]} of #{card.keys[0]}")
      end

      p_values = value(hand.collect { |x| x.values[0] })
    end

    puts "Player's hand:"
    hand.each do |card|
      puts(@@p_spaces + "#{card.values[0]} of #{card.keys[0]}")
    end

    hand
  end

  def place_bet
    puts "Bankroll: $#{@bankroll}\nWhat is your bet?"
    bet = gets.chomp.to_i

    while bet > @bankroll
      puts "You don't have $#{bet} in your bankroll."
      puts "Bankroll: $#{@bankroll}\nWhat is your bet?"
      bet = gets.chomp.to_i
    end

    @bankroll -= bet
    bet
  end

  # returns 1, 0, -1 for dealer win, push (or nothing), or player win.
  def naturals_check(d_hand, p_hand)
    if is_natural?(p_hand)
      if is_natural?(d_hand)
        return 0
      else
        return -1
      end
    elsif is_natural?(d_hand)
      return 1
    end
    return 0
  end

  def is_natural?(hand)
    hand.size == 2 && value(hand.collect { |x| x.values[0] })[1] == 21
  end

  #method assume's dealer's hand is not a natural
  #dealer stands on soft 17
  def d_move(hand)
    d_values = value(hand.collect { |x| x.values[0] })

    while d_values[0] < 17
      hand << @@new_deck[@prng.rand(52)]
      d_values = value(hand.collect { |x| x.values[0] })
    end

    puts "Dealer's hand:"
    hand.each do |card|
      puts(@@d_spaces + "#{card.values[0]} of #{card.keys[0]}")
    end

    hand
  end

  def go
    puts "\n\nWelcome to Blackjack.\n\nIt's a super big shoe."
    puts "What is today's bankroll?"
    #what if user inputs something silly?
    @bankroll = gets.chomp.to_i

    play
  end
  #def deal

end

lets_play = Table.new
lets_play.go
