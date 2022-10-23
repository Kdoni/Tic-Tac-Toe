class Game
  def self.start_game
    puts "Player 1, what's your name?"
    @player_one = gets.chomp
    puts "Welcome #{@player_one}!"
    puts "Player 2, what's your name?"
    @player_two = gets.chomp
    puts "Welcome #{@player_two}!"
    puts 'Let the game begin!'
  end

  def self.initial_state
    puts '1|2|3'
    puts '4|5|6'
    puts '7|8|9'
  end

  def self.player_one_move
    while @@game_over == false

    end
  end

  def self.game_state
    puts "#{@@board_state[0][0]}|#{@@board_state[0][1]}|#{@@board_state[0][2]}"
    puts "#{@@board_state[1][0]}|#{@@board_state[1][1]}|#{@@board_state[1][2]}"
    puts "#{@@board_state[2][0]}|#{@@board_state[2][1]}|#{@@board_state[2][2]}"
  end
  @@game_over = false

  @@board_state = [%w[- - -],
                   %w[- - -],
                   %w[- - -]]
end

# Game.start_game
# Game.initial_state
Game.game_state
