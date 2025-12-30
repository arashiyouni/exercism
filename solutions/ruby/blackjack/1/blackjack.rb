module Blackjack
  def self.parse_card(card)
    case card.downcase
      when "ace" then 11
      when "two" then 2
      when "three" then 3
      when "four" then 4
      when "five" then 5
      when "six" then 6
      when "seven" then 7
      when "eight" then 8
      when "nine" then 9
      when "ten", "jack", "queen", "king" then 10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    sum_card = parse_card(card1).to_i + parse_card(card2).to_i
    case sum_card
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    if card1 == "ace" && card2 == "ace"
      return "P"
    end

    range = card_range(card1, card2)
    dealer_value = parse_card(dealer_card)

    if range == "blackjack"
      if dealer_value < 10 && dealer_card != "ace"
        return "W"
      else
        return "S"
      end
    end

    return "S" if range == "high"

    if range == "mid"
      return dealer_value >= 7 ? "H" : "S"
    end

    "H"
  end
end
