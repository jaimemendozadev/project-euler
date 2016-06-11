def fib_index(len)
  fib_num_array = [1, 1]

  while fib_num_array.last.to_s.length < len
  	result = fib_num_array[-2] + fib_num_array[-1]
  	fib_num_array.push(result)
  end

  fib_num_array.length


end

puts fib_index(1000) #4782
