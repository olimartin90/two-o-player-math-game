# Create a class for player
class Player
    # Write getter with attr_reader (name)
    attr_reader :name
    # Write getter and setter with attr_accessor (total_questions, correct_answers, lives, alive)
    attr_accessor :lives, :total_questions, :correct_answers

    # Define a function initialize name
    def initialize(name)
    # Declare all the variables needed from the accessor
    @name = name
    @lives = 3
    @total_questions = 0
    @correct_answers = 0
    end

    # Define a function for dead when a player has no live left
    def game_over?
        # Write a if condition - true
        if @lives == 0
            true
        end
    end

end
