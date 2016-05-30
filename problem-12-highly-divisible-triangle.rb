def sieve(max=100)
  sieve = []
  (2..max).each { |i| sieve[i] = i }
  (2..Math.sqrt(max)).each do |i|
    (i*i).step(max, i) { |j| sieve[j] = nil } if sieve[i]
  end
  sieve.compact
end


def add_to_factors_list(list, num)
  
  triangle_num = ((num + 1) * num) / 2

  triangle_num if list.include?(triangle_num)

  factors = sieve(triangle_num)

  result = factors - list

  result.empty? ? result : result.each {|x| list.push(x)}

end

def highly_divisible_triangle(num)
  
  nth_triangle_num = 1
  factors_list = []

  until factors_list.length == num

    add_to_factors_list(factors_list, nth_triangle_num)
    nth_triangle_num += 1

  end
  
  "The triangle number is #{nth_triangle_num}"

end

puts highly_divisible_triangle(500)

