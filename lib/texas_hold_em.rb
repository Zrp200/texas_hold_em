# Everything related to how to computer plays poker
	module Computer
		# The chance something will happen
			class Odds
				attr_accessor :deck, :hand
				def initialize(deck, hand); @deck, @hand = deck, hand; end
				# The best starting hand; 2 Aces
					def best_hand
						aces = 0
						cards = deck.cards.length
						for card in deck.cards
							if card.num == "Ace"
								aces += 1
							end
						end
						return aces/cards
					end
			end
			class Player < Player
				def action(amt, pot=pot)
					initial = amt + @bet
					if amt == 0 
						false
					elsif amt + bet < pot
						nil
					elsif amt + bet > pot && amt + bet > @money
						true
					elsif amt
				
	end
	class Player
		attr_accessor :bet, :money
		def initialize
			@bet, @money = 0, 1000
		end
		def new_round
			@bet = 0
		end
		# The player matches the others' bets
			def stay(amt=@bet, pot=pot)
				@money -= amt
				pot += amt
			end
		# The player raises the bet amount
			alias :raise :stay
		
	end
# The deck. It stores Card objects.
	class Deck
		# The actual cards
			attr_reader :cards
		def initialize
			@cards = Array.new
			4.times do
				@cards.push Card.new("Ace")
				@cards.push Card.new("Jack")
				@cards.push Card.new("Queen")
				@cards.push Card.new("King")
				for num in (2..10).to_a
					@cards.push Card.new(num)
				end
			end
		end
	end
# The main object. These objects are used to make game decisions.
	class Card
		def initialize(num)
			@num, @value = num, case num
				when "Ace" then 14
				when "King" then 13
				when "Queen" then 12
				when "Jack" then 11
			else
				num.to_i
			end
		end
	end
