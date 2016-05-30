def check_left_to_right(perm)

  num_array = perm.reject {|num| num == 0}

=begin
  i = 0

  while i < (num_array.length - 1)
  	true if num_array[i] < num_array[i + 1]
  	i+=1
  end
=end

  return true if num_array == num_array.sort {|x,y| x <=> y}
  
end


def check_right_to_left(perm)
  num_array = perm.reject {|num| num == 0}

  return true if num_array == num_array.sort {|x,y| y <=> x}
end



def lexi_permutations(nth, *nums)

  numbers = nums 
  len = nums.length

  perm_array = []
  
  #until perm_array.length == nth 
    numbers.permutation(len) do |p|
      break if perm_array.length == nth
      
      puts p.inspect
      puts "perm_array length is #{perm_array.length}" 
      puts ""

      perm_array << p if check_left_to_right(p) == true 
      perm_array << p if check_right_to_left(p) == true
    end
  #end
  
  puts perm_array.length
  perm_array.last.join

end


puts lexi_permutations(1000000, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9)