# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer
  def initialize(input_question, input_answer)
    @question = input_question
    @answer = input_answer
  end
end

class Deck
  def initialize(input_options)
    # create some new cards
    # call make_cards from the initialize
    make_cards(input_options)
  end

  def make_cards(some_cards)
    @cards = []
    some_cards.each do |hash_question, hash_answer|
      # create a new card for each key value pair
      @cards << Card.new(hash_question, hash_answer)
    end
  end

  def remaining_cards
    # return the number of remaining cards
    @cards.length
  end

  def draw_card
    # remove a card from the deck
    @cards = @cards.shuffle
    removed_card = @cards.pop
    # return the card I removed
    return removed_card
  end
end

# not touch the code below here (until the bonus)
trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
