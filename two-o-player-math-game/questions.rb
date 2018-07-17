# Create a class  for Question
class Question
    # Write a getter with attr_reader (first_nbr, second_nbr)
    attr_reader :first_nbr, :second_nbr

    # Define a function initialize
    def initialize
        # Declare variable for first number and second number question within a range of 1 to 20
        @first_nbr = rand (1..20)
        @second_nbr = rand (1..20)
    end

    # Define a function to get the answer from the player
    def get_sum_answer
        # Return the sum of the first and second number variables 
        @first_nbr + @second_nbr
    end

end
