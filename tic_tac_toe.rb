class Game
  @player_one = ''
  @player_two = ''

  def self.error_check
    player_one_move
  end

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
    puts "#{@player_one} make your move."
    move_one = gets.chomp
    case move_one.to_i
    when 1
      @@board_state[0][0] = 'X'
    when 2
      @@board_state[0][1] = 'X'
    when 3
      @@board_state[0][2] = 'X'
    when 4
      @@board_state[1][0] = 'X'
    when 5
      @@board_state[1][1] = 'X'
    when 6
      @@board_state[1][2] = 'X'
    when 7
      @@board_state[2][0] = 'X'
    when 8
      @@board_state[2][1] = 'X'
    when 9
      @@board_state[2][2] = 'X'
    else
      puts 'Invalid option...'
      return error_check
    end
    game_state
    player_two_move
  end

  def self.player_two_move
    puts "#{@player_two} make your move."
    move_one = gets.chomp
    case move_one.to_i
    when 1
      @@board_state[0][0] = 'O'
    when 2
      @@board_state[0][1] = 'O'
    when 3
      @@board_state[0][2] = 'O'
    when 4
      @@board_state[1][0] = 'O'
    when 5
      @@board_state[1][1] = 'O'
    when 6
      @@board_state[1][2] = 'O'
    when 7
      @@board_state[2][0] = 'O'
    when 8
      @@board_state[2][1] = 'O'
    when 9
      @@board_state[2][2] = 'O'
    else
      puts 'Invalid option...'
      return error_check
    end
    game_state
    player_one_move
  end

  def self.game_state
    puts "#{@@board_state[0][0]}|#{@@board_state[0][1]}|#{@@board_state[0][2]}"
    puts "#{@@board_state[1][0]}|#{@@board_state[1][1]}|#{@@board_state[1][2]}"
    puts "#{@@board_state[2][0]}|#{@@board_state[2][1]}|#{@@board_state[2][2]}"
  end

  @game_over = false

  @@board_state = [%w[- - -],
                   %w[- - -],
                   %w[- - -]]
end

# Game.start_game
# Game.initial_state
# Game.game_state
Game.start_game
Game.player_one_move
