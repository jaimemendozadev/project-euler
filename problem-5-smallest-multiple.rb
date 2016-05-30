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
  		
puts smallest_multiple(1, 20)

#holy shit! I got the answer? The answer is 232792560

