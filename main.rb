arr1 = [1,2,3,4]
arr2 = [1,4,3,5]

def check_numbers(array1, array2)
  4 - (array1 - array2).length
end

puts "*" * check_numbers(arr1, arr2)

def check_positions(array1, array2)
  array1.each_with_index do |a, idx|
    puts a == array2[idx]
  end
end

check_positions(arr1, arr2)