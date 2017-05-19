# class Move
#   VALUES = ["rock", "paper", "scissors", "lizard", "spock"]

#   def initialize(value)
#     @value = value
#   end

#   def scissors?
#     @value == "scissors"
#   end

#   def lizard?
#     @value == "lizard"
#   end

#   def spock?
#     @value == "spock"
#   end

#   def rock?
#     @value == "rock"
#   end

#   def paper?
#     @value == "paper"
#   end

#   def >(other_move)
#     ((rock? && other_move.scissors?) || (rock? && other_move.lizard?)) ||
#       ((lizard? && other_move.paper?) || (lizard? && other_move.spock?)) ||
#       ((paper? && other_move.rock?) || (paper? && other_move.spock?)) ||
#       ((scissors? && other_move.paper?) || (scissors? && other_move.lizard?)) ||
#       ((spock? && other_move.scissors?) || (spock? && other_move.rock?))
#   end

#   def <(other_move)
#     ((rock? && other_move.paper?) || (rock? && other_move.spock?)) ||
#       ((paper? && other_move.scissors?) || (paper? && other_move.lizard?)) ||
#       ((scissors? && other_move.rock?) || (scissors? && other_move.spock?)) ||
#       ((lizard? && other_move.scissors?) || (lizard? && other_move.rock?)) ||
#       ((spock? && other_move.lizard?) || (spock? && other_move.paper?)) 
#   end

#   def to_s
#     @value
#   end
# end

# class Player
#   attr_accessor :move, :name, :score, :move_history

#   def initialize
#     @score = 0
#     set_name
#     @move_history = []
#   end

#   def track_move(input)
#     self.move_history << input
#   end

#   def display_moves
#     puts "These were your moves of this game #{move_history}" 
#   end


#   def increase_score
#     self.score += 1    
#     puts "The score of #{self.name} is now #{self.score}"
#     if score == 5 then self.win end
#   end
  
#   def win
#     puts "#{self.name} has won #{self.score} games in a row and wins this match. Bye!"
#     exit
#   end

# end

# class Human < Player
#   def set_name
#     n = ""
#     loop do
#       puts "What is your name"
#       n = gets.chomp
#       break unless n.empty?
#       puts "Sorry, must enter a value."
#     end
#     self.name = n
#   end  

#   def choose
#     choice = nil
#     loop do
#       puts "Please choose rock, paper, scissors, spock or lizard:"
#       choice = gets.chomp
#       if Move::VALUES.include?(choice) then track_move(choice) end
#       break if Move::VALUES.include? choice
#       puts "Sorry, invalid choice."
#     end
#     self.move = Move.new(choice)
#   end
# end

# class Computer < Player
#   def set_name
#     self.name = ["R2D2", "Hal", "Chappi"].sample
#   end

#   def choose
#     self.move = Move.new(Move::VALUES.sample)
#     track_move(move.to_s)
#   end
# end

# class RPSGame
#   attr_accessor :human, :computer

#   def initialize
#     @human = Human.new
#     @computer = Computer.new
#   end

#   def display_welcome_message
#     puts "Welcome to Rock, Paper, Scissors, Spock or Lizard!"
#   end

#   def display_goodbye_message
#     puts "Thank you for playing Rock, Paper, Scissors. Good bye!"
#   end

#   def display_winner
#     puts "#{human.name} chose #{human.move}."
#     puts "#{computer.name} chose #{computer.move}."

#     if human.move > computer.move
#       puts "#{human.name} won!"
#       human.increase_score
#     elsif human.move < computer.move
#       puts "#{computer.name} won!"
#       computer.increase_score
#     else
#       puts "Its a tie!"
#     end
#   end

#   def play_again?
#     answer = nil
#     loop do
#       puts "Would you like to play again?"
#       answer = gets.chomp
#       break if ["y", "n"].include? answer.downcase
#       puts "Sorry, must be y or n."
#     end

#     return false if answer.downcase == "n"
#     return true if answer.downcase == "y"
#   end

#   def play
#     display_welcome_message
#     loop do
#       human.choose
#       computer.choose
#       display_winner
#       break unless play_again?
#     end
#     human.display_moves
#     computer.display_moves
#     display_goodbye_message
#   end
# end

# RPSGame.new.play



# class Move
#   VALUES = ["rock", "paper", "scissors", "lizard", "spock"]

#   def initialize(value)
#     @value = value
#   end

#   def scissors?
#     @value == "scissors"
#   end

#   def lizard?
#     @value == "lizard"
#   end

#   def spock?
#     @value == "spock"
#   end

#   def rock?
#     @value == "rock"
#   end

#   def paper?
#     @value == "paper"
#   end

#   def >(other_move)
#     ((rock? && other_move.scissors?) || (rock? && other_move.lizard?)) ||
#       ((lizard? && other_move.paper?) || (lizard? && other_move.spock?)) ||
#       ((paper? && other_move.rock?) || (paper? && other_move.spock?)) ||
#       ((scissors? && other_move.paper?) || (scissors? && other_move.lizard?)) ||
#       ((spock? && other_move.scissors?) || (spock? && other_move.rock?))
#   end

#   def <(other_move)
#     ((rock? && other_move.paper?) || (rock? && other_move.spock?)) ||
#       ((paper? && other_move.scissors?) || (paper? && other_move.lizard?)) ||
#       ((scissors? && other_move.rock?) || (scissors? && other_move.spock?)) ||
#       ((lizard? && other_move.scissors?) || (lizard? && other_move.rock?)) ||
#       ((spock? && other_move.lizard?) || (spock? && other_move.paper?)) 
#   end

#   def to_s
#     @value
#   end
# end

# class Player
#   attr_accessor :move, :name, :score, :move_history

#   def initialize
#     @score = 0
#     set_name
#     @move_history = []
#   end

#   def track_move(input)
#     self.move_history << input
#   end

#   def display_moves
#     puts "These were your moves of this game #{move_history}" 
#   end


#   def increase_score
#     self.score += 1    
#     puts "The score of #{self.name} is now #{self.score}"
#     if score == 5 then self.win end
#   end
  
#   def win
#     puts "#{self.name} has won #{self.score} games in a row and wins this match. Bye!"
#     exit
#   end

# end

# class Human < Player
#   def set_name
#     n = ""
#     loop do
#       puts "What is your name"
#       n = gets.chomp
#       break unless n.empty?
#       puts "Sorry, must enter a value."
#     end
#     self.name = n
#   end  

#   def choose
#     choice = nil
#     loop do
#       puts "Please choose rock, paper, scissors, spock or lizard:"
#       choice = gets.chomp
#       if Move::VALUES.include?(choice) then track_move(choice) end
#       break if Move::VALUES.include? choice
#       puts "Sorry, invalid choice."
#     end
#     self.move = Move.new(choice)
#   end
# end

# class Computer < Player
#   def set_name
#     self.name = "Hal" #["R2D2", "Hal", "Chappi"].sample
#   end

#   def choose
#     #puts name
#     if self.name == "Hal"
#       self.move = Move.new("scissors")
#     else
#       self.move = Move.new(Move::VALUES.sample)
#     end
#     #self.move = Move.new(Move::VALUES.sample)
#     track_move(move.to_s)
#   end
# end

# class Hal < Computer

#   def initialize
#     self.move = Move.new("scissors")
#   end
# end

# class RPSGame
#   attr_accessor :human, :computer

#   def initialize
#     @human = Human.new
#     @computer = Computer.new
#   end

#   def display_welcome_message
#     puts "Welcome to Rock, Paper, Scissors, Spock or Lizard!"
#   end

#   def display_goodbye_message
#     puts "Thank you for playing Rock, Paper, Scissors. Good bye!"
#   end

#   def display_winner
#     puts "#{human.name} chose #{human.move}."
#     puts "#{computer.name} chose #{computer.move}."

#     if human.move > computer.move
#       puts "#{human.name} won!"
#       human.increase_score
#     elsif human.move < computer.move
#       puts "#{computer.name} won!"
#       computer.increase_score
#     else
#       puts "Its a tie!"
#     end
#   end

#   def play_again?
#     answer = nil
#     loop do
#       puts "Would you like to play again?"
#       answer = gets.chomp
#       break if ["y", "n"].include? answer.downcase
#       puts "Sorry, must be y or n."
#     end

#     return false if answer.downcase == "n"
#     return true if answer.downcase == "y"
#   end

#   def play
#     display_welcome_message
#     loop do
#       human.choose
#       computer.choose
#       display_winner
#       break unless play_again?
#     end
#     human.display_moves
#     computer.display_moves
#     display_goodbye_message
#   end
# end

# RPSGame.new.play

# We have a list of robot names for our Computer class, but other than the name, 
# there's really nothing different about each of them. It'd be interesting to explore how to build different personalities for each robot. 
# For example, R2D2 can always choose "rock". Or, "Hal" can have a very high tendency to choose "scissors", 
# and rarely "rock", but never "paper". You can come up with the rules or personalities for each robot. How would you approach a feature like this?
# My Note: The above code works, with Hal always choosing scissors by implementing a if condition on line 289.


# In the code below I want ot build a class called "Hal" with a personality

class Move
  VALUES = ["rock", "paper", "scissors", "lizard", "spock"]

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == "scissors"
  end

  def lizard?
    @value == "lizard"
  end

  def spock?
    @value == "spock"
  end

  def rock?
    @value == "rock"
  end

  def paper?
    @value == "paper"
  end

  def >(other_move)
    ((rock? && other_move.scissors?) || (rock? && other_move.lizard?)) ||
      ((lizard? && other_move.paper?) || (lizard? && other_move.spock?)) ||
      ((paper? && other_move.rock?) || (paper? && other_move.spock?)) ||
      ((scissors? && other_move.paper?) || (scissors? && other_move.lizard?)) ||
      ((spock? && other_move.scissors?) || (spock? && other_move.rock?))
  end

  def <(other_move)
    ((rock? && other_move.paper?) || (rock? && other_move.spock?)) ||
      ((paper? && other_move.scissors?) || (paper? && other_move.lizard?)) ||
      ((scissors? && other_move.rock?) || (scissors? && other_move.spock?)) ||
      ((lizard? && other_move.scissors?) || (lizard? && other_move.rock?)) ||
      ((spock? && other_move.lizard?) || (spock? && other_move.paper?)) 
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score, :move_history

  def initialize
    @score = 0
    set_name
    @move_history = []
  end

  def track_move(input)
    self.move_history << input
  end

  def display_moves
    puts "These were your moves of this game #{move_history}" 
  end


  def increase_score
    self.score += 1    
    puts "The score of #{self.name} is now #{self.score}"
    if score == 5 then self.win end
  end
  
  def win
    puts "#{self.name} has won #{self.score} games in a row and wins this match. Bye!"
    exit
  end

end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What is your name"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end  

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, spock or lizard:"
      choice = gets.chomp
      if Move::VALUES.include?(choice) then track_move(choice) end
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Chappi"].sample
  end

  def change_strategy
    puts "this is the change_strategy method"
    puts "#{human.name}"
    p move_history
  end

  def choose
    #puts name
    if self.name == "Hal"
      self.move = Move.new("scissors")
    else
      self.move = Move.new(Move::VALUES.sample)
    end
    #self.move = Move.new(Move::VALUES.sample)
    track_move(move.to_s)
  end
end

class Hal < Computer

  def initialize
    self.move = Move.new("scissors")
    self.name = "Hal"
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Spock or Lizard!"
  end

  def display_goodbye_message
    puts "Thank you for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."

    if human.move > computer.move
      puts "#{human.name} won!"
      human.increase_score
    elsif human.move < computer.move
      puts "#{computer.name} won!"
      computer.increase_score
    else
      puts "Its a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again?"
      answer = gets.chomp
      break if ["y", "n"].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == "n"
    return true if answer.downcase == "y"
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      computer.change_strategy
      break unless play_again?
    end
    human.display_moves
    computer.display_moves
    display_goodbye_message
  end
end

RPSGame.new.play