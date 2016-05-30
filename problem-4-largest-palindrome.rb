def largest_palindrome(digit_amt)
  start_num = ("1".ljust(digit_amt, "0")).to_i
  end_num = ("9" * digit_amt).to_i

  palindrome_arr = []

  end_num.downto(start_num) do |x|
    end_num.downto(start_num) do |y|
      product = x * y

      next if product % 11 != 0

      palindrome_arr.push(product) if product.to_s == product.to_s.reverse
    end 
  end

  palindrome_arr.sort.last

end

puts largest_palindrome(3) #906609