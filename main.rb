require "./methods.rb"

class Game

  attr_accessor :turn, :game_over, :code

  def initialize
    @turn = 1
    @game_over = false
    @code = pc_select
  end 

  def play
    p @code
    12.times do
      puts "Turn #{@turn}."
      @turn += 1
      current_select = player_select
      if current_select == @code
        puts "You win"
        break
      elsif @turn == 12
        puts "You lost. The code was #{@code}."
        break
      end
      guess = check_positions(@code, current_select, true)
      exact = check_positions(@code, current_select)
      p guess
      puts "*" * (guess) + "+" * (exact)
    end
  end

end

new_game = Game.new
new_game.play