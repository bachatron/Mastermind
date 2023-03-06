def player_select
  selection = []
  puts "Make your guess:"
  loop do
    selection = gets.chomp.split("")
    break if (['1','2','3','4','5','6','7','8'] - selection).length == 4
    puts "Wrong input. Four numbers from 1 to 8."
  end
  selection
end

def pc_select
  array = []
  until array.length == 4
    array << (rand(8)+1).to_s
    array.uniq!
  end
  array
end

def check_numbers(array1, array2)
  4 - (array1 - array2).length
end

def check_positions(array1, array2)
  array1.count do |a|
    a == array2[array1.index(a)]
  end
end

#pc_code = pc_select

#loop do
  #user_guess = player_select
  #puts "TEST: " + "*" * check_numbers(pc_code, user_guess) + "+" * check_positions(pc_code, user_guess)
  #break if user_guess == pc_code
  #p user_guess
#end
