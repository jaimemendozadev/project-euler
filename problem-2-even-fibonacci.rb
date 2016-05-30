def fibonacci(num)
  fibo_array = [1, 2]

  while fibo_array.last <= num  	
  	fibo_array << fibo_array[-2] + fibo_array[-1]
  end

  fibo_array.select!{|x| x % 2 == 0}.reduce(:+)
end

fibonacci(4000000) #4613732


def fibo_ver2(num)
  fibo_array = [2]

  while fibo_array.last <= num 
  	#based on f(n) = (4 * f(n-1)) + f(n-2) formula
    result = (4 * fibo_array[-1]) + (fibo_array[-2].nil? ? 0 : fibo_array[-2])

    break if result > num

    fibo_array << result
  end

  fibo_array.reduce(:+)

end


fibo_ver2(4000000) #4613732

