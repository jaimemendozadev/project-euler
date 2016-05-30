def multiples(num)
  arr = []
  (1...num).each {|x| arr.push(x) if x % 3 == 0 || x % 5 == 0 }
  arr.inject(:+)
end

multiples(1000)#233168



######################################################
#Version 2
######################################################

def multiples_ver_2(num)
  divisible_3 = (1...num).select{|x| x if x % 3 == 0}.compact.reduce(:+)

  divisible_5 = (1...num).select{|x| x if x % 5 == 0}.compact.reduce(:+)

  divisible_15 = (1...num).select{|x| x if x % 15 == 0}.compact.reduce(:+)

  divisible_3 + divisible_5 - divisible_15
end

puts multiples(1000) #233168