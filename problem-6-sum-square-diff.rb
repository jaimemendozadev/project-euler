def sum_sqr_diff(num)
  arr = [*1..num]

  sum_of_squares = arr.map {|x| x ** 2}.reduce(:+)

  square_of_sums = arr.reduce(:+) ** 2

  square_of_sums - sum_of_squares

end

puts sum_sqr_diff(100) #25164150