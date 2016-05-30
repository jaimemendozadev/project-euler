def power_digit_sum(num, power)
  power_digit = num ** power

  power_digit.to_s.split("").map(&:to_i).reduce(:+)
end


power_digit_sum(2, 1000) #1366