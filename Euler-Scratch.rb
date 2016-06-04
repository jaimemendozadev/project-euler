=begin 

Find largest index i such that array[i − 1] < array[i].

Find largest index j such that j ≥ i and array[j] > array[i − 1].

Swap array[j] and array[i − 1].

Reverse the suffix starting at array[i].

=end






initial_sequence = [0, 1, 2, 5, 3, 3, 0]


initial_sequence.each_with_index do |num, idx|

  #Find start of suffix
  
  if initial_sequence[idx] > initial_sequence[idx + 1]

    #slice suffix
    start_num = idx
    end_num = 1

    i = idx

    while i < initial_sequence.length - 1
      if initial_sequence[i] > initial_sequence[i+1]
        end_num += 1
      end

      i += 1
    end

    suffix = initial_sequence.slice(start_num, end_num)


    #find the pivot, if any

    pivot = initial_sequence[idx - 1] < initial_sequence[idx] ? initial_sequence[idx - 1] : nil

    return initial_sequence if pivot == nil






















=begin
require 'benchmark'

def smallest_multiple(start_num, end_num)
  smallest_num = end_num
  arr = [*start_num..end_num]

  i = 0

  while i < arr.length

  	result = smallest_num.divmod(arr[i])

  	if result[1] != 0
  	  smallest_num += 1
  	  i = 0
  	end

  	i += 1

  end

  smallest_num
end
  		
#puts smallest_multiple(1, 20)







def is_prime(num)
 return true if num == 2
 
 (2...num).each {|x| return false if num % x == 0}
 
 return true

end



def list_of_factors(num)
  result = []

  (2...num).map do |x|
    
  	division = num.divmod(x) 

  	result.push(x, division[0]) if division[1] == 0  
  
  end.compact
  
  return result.sort
end


def smallest_multiple_ver2(start_num, end_num)

  num_range = [*start_num..end_num]

  prime_factors = []

  num_range.each do |num|
    next if prime_factors.include?(num)

    prime_factors.push(num) if is_prime(num) == true
      

    if is_prime(num) == false
      factors = list_of_factors(num)

      factors.each do |f|
      	if prime_factors.count(f) < factors.count(f)
      	  prime_factors << f 




      	

    end


    
  end
 
end
  		
#puts smallest_multiple_ver2(1, 20)

#puts list_of_factors(4)

puts check_factors([2,3,2,5])

Benchmark.bm do |x|
  #x.report {is_a_prime(6857)}
  #x.report {is_a_prime_ver2(6857)}
  #x.report{sieve(600851475143)}

end
=end