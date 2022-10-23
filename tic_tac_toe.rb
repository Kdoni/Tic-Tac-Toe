class Game
  @player_one = ''
  @player_two = ''

  def self.error_check_player_one
    player_one_move
  end

  def self.error_check_player_two
    player_two_move
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
      if @@board_state[0][0] == '-'
        @@board_state[0][0] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 2
      if @@board_state[0][1] == '-'
        @@board_state[0][1] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 3
      if @@board_state[0][2] == '-'
        @@board_state[0][2] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 4
      if @@board_state[1][0] == '-'
        @@board_state[1][0] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 5
      if @@board_state[1][1] == '-'
        @@board_state[1][1] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 6
      if @@board_state[1][2] == '-'
        @@board_state[1][2] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 7
      if @@board_state[2][0] == '-'
        @@board_state[2][0] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 8
      if @@board_state[2][1] == '-'
        @@board_state[2][1] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    when 9
      if @@board_state[2][2] == '-'
        @@board_state[2][2] = 'X'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_one
      end
    else
      puts 'Invalid option...'
      return error_check_player_one
    end
    game_state
    player_two_move
  end

  def self.player_two_move
    puts "#{@player_two} make your move."
    move_one = gets.chomp
    case move_one.to_i
    when 1
      if @@board_state[0][0] == '-'
        @@board_state[0][0] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 2
      if @@board_state[0][1] == '-'
        @@board_state[0][1] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 3
      if @@board_state[0][2] == '-'
        @@board_state[0][2] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 4
      if @@board_state[1][0] == '-'
        @@board_state[1][0] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 5
      if @@board_state[1][1] == '-'
        @@board_state[1][1] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 6
      if @@board_state[1][2] == '-'
        @@board_state[1][2] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 7
      if @@board_state[2][0] == '-'
        @@board_state[2][0] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 8
      if @@board_state[2][1] == '-'
        @@board_state[2][1] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    when 9
      if @@board_state[2][2] == '-'
        @@board_state[2][2] = 'O'
      else
        puts 'The input has already been filled, try another one!'
        return error_check_player_two
      end
    else
      puts 'Invalid option...'
      return error_check_player_two
    end
    game_state
    player_one_move
  end

  def self.game_state
    puts "#{@@board_state[0][0]}|#{@@board_state[0][1]}|#{@@board_state[0][2]}"
    puts "#{@@board_state[1][0]}|#{@@board_state[1][1]}|#{@@board_state[1][2]}"
    puts "#{@@board_state[2][0]}|#{@@board_state[2][1]}|#{@@board_state[2][2]}"
  end

  def self.winning_condition; end

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
