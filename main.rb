def check_numbers(array1, array2)
  4 - (array1 - array2).length
end

def check_positions(array1, array2)
  array1.count do |a|
    a == array2[array1.index(a)]
  end
end



def pc_play
  nums = []
  until nums.length == 4
    nums << rand(7)
    nums.uniq
  end
  nums
end

arr1 = pc_play
arr2 = pc_play

count = 0

until arr1 == arr2
  arr1 = pc_play
  arr2 = pc_play
  puts "*" * check_numbers(arr1, arr2) + "+" * check_positions(arr1, arr2)
  count += 1
  puts count
end