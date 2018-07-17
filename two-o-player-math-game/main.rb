# Require files (questions.rb, players.rb)
require './questions'
require './players'

# Function play_turn
def play_turn(player)
    # Get the question from the file questions.rb using .new
    question = Question.new
    # Print out the question by printing the player name and question first number and question second number
    puts "#{player.name}: What does #{question.first_nbr} plus #{question.second_nbr} equal?"
    # Get the answer from the player - using the gets.chomp.to_i
    player_answer = gets.chomp.to_i
    # Increment the total question for player += 1
    player.total_questions += 1
    # State the correct answer
    good_answer = question.get_sum_answer

    # If condition to verify is player answer == correct answer
    if player_answer == good_answer
        # Add + 1 to player correct answer
        player.correct_answers += 1
        # Print out the player name with a message => Correct Answer!
        puts "#{player.name}: Congrats you have a good answer! :)"

    # Else condition if not good answer
    else
    # Substract -1 to player lives
        player.lives -= 1
    # Print out the player name with a message => Incorrect Answer!
        puts "#{player.name}: Nope you have a wrong answer! :("
    end
end

# Function for the game
def game_on
    # Declare variable for player_1 and player_2 -> using .new
    player_1 = Player.new("Player 1")
    player_2 = Player.new("Player 2")

    # Declare a counter variable
    count = 0

    # Use a while loop to play game until one of the player has no live left
    while player_1.lives > 0 && player_2.lives > 0
        puts "***** NEW TURN *****"

        # Check if the counter is even?
        count.even? ? play_turn(player_1) : play_turn(player_2)

        # Display the results of player 1 and 2 
        display_player_1_result = "P1: #{player_1.lives}/3 vs "
        display_player_2_result = "P2: #{player_2.lives}/3"
        # Print out the output string
        puts display_player_1_result + display_player_2_result
        
        count += 1
    end

    # Find the winner
    winner = player_1.game_over? ? player_2 : player_1
    puts "*********************"
    # Print out the winner and his score
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "***** GAME OVER *****"
    puts "***** GOOD BYE *****"
end

# Call the function game
game_on

