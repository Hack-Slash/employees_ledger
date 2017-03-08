# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

# class Card
#   attr_reader :answer, :question
#   def initialize(input_options)
#     @answer = input_options[:answer]
#     @question = input_options[:question]
#   end
# end

# class Deck
#   attr_reader :cards

#   def initialize(input_options)
#     make_cards(input_options)
#   end

#   def make_cards(hash_of_cards)
#     @cards = []
#     hash_of_cards.each do |question, answer|
#       @cards << Card.new(question: question, answer: answer)
#     end
#   end

#   def remaining_cards
#     @cards.count
#   end

#   def draw_card
#     @cards.delete_at(rand(@cards.length))
#   end
# end

# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.

class Card
  def initialize(input_options)
    @answer = input_options[:answer]
    @question = input_options[:question]
  end

  def answer
    # return whichever letter is associated with the value that is @answer
    @mc_answers.each do |letter, answer|
      if answer == @answer
        return letter
      end
    end
  end

  def question
    if @question == "What is the capital of Illinois?"
      @mc_letters = ['a','b','c','d']
      @answers = [@answer, "Helena", "Albany", "Austin"]
    elsif @question == "Is Africa a country or a continent?"
      @mc_letters = ['a','b']
      @answers = [@answer, "Country"]
    elsif @question == "Tug of war was once an Olympic event. True or false?"
      @mc_letters = ['a','b']
      @answers = [@answer, "False"]
    end
    # make into a hash
      @mc_answers = {}
      @mc_letters.each do |letter|
        the_answer = @answers.delete_at(rand(@answers.length))
        @mc_answers[letter] = the_answer
        @question += "[#{letter}] #{the_answer}"
      end
      return @question
  end
end

class Deck
  attr_reader :cards

  def initialize(input_options)
    make_cards(input_options)
  end

  def make_cards(hash_of_cards)
    @cards = []
    hash_of_cards.each do |question, answer|
      @cards << Card.new(question: question, answer: answer)
    end
  end

  def remaining_cards
    @cards.count
  end

  def draw_card
    @cards.delete_at(rand(@cards.length))
  end
end


# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.


# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  wrong_answers = 0
  the_question = card.question
    # this is for the first bonus
    # while wrong_answers < 2
      puts the_question
      user_answer = gets.chomp
      if user_answer.downcase == card.answer.downcase
        puts "Correct!"
        # break
      else
        puts "Incorrect!"
        wrong_answers += 1
      end
      #  this is for the first bonus
    # end
end
