def player_select
  selection = []
  until (['1','2','3','4','5','6','7','8'] - selection).length == 4
    selection = gets.chomp.split("")
    puts "Wrong input. 4 number from 1 to 8."
  end
  selection
end

def pc_select
  array = []
  until array.length == 4
    array << rand(8)+1
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

puts pc_select
puts player_select

#puts "TEST: " + "*" * check_numbers(arr1, arr2) + "+" * check_positions(arr1, arr2)