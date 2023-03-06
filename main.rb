require "./methods.rb"

class Game

  attr_accessor :turn, :game_over, :code

  def initialize
    @turn = 1
    @game_over = false
    @code = pc_select
  end

  def play
    until @turn == 12
      puts "Turn #{@turn}."
      @turn += 1
      current_select = player_select
      break if current_select == @code
      puts "*" * (check_numbers(@code, current_select) - check_positions(@code, current_select)) + "+" * check_positions(@code, current_select)
    end
  end

end

new_game = Game.new
new_game.play