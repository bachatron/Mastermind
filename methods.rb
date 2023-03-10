def player_select()
  selection = []
  puts "Make your guess:"
  loop do
    selection = gets.chomp.split("")
    break if selection.all? { |i| ['1','2','3','4','5','6'].include?(i)} && selection.length == 4
    #break if (['1','2','3','4','5','6'] - selection).length == 2
    puts "Wrong input. Four numbers from 1 to 6."
  end
  selection
end

def pc_select(repeat=false)
  array = []
  until array.length == 4
    array << (rand(6)+1).to_s
    array.uniq! if repeat
  end
  array
end

def check_positions(array1, array2, order=false)
  array1, array2 = array1.sort, array2.sort if order
  array1.count do |a|
    a == array2[array1.index(a)]
  end
end

def check_numbers(array1, array2)
  4 - (array1 - array2).length

end


pc_arr = pc_select
p "PC: " + pc_arr.to_s
player_arr = pc_select
p "PL: " + player_arr.to_s

test = player_arr.select do |i|
  pc_arr.include?(i)
end

p test

#p arr1 - arr2

