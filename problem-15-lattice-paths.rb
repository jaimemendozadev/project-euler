=begin 

##################
Notes
##################

Read this article and realized I need to study Pascal's Triangle to solve problem: 
http://blog.functionalfun.net/2008/07/project-euler-problem-15-city-grids-and.html

Saw the following Khan Academy Videos to learn about Pascal's Triangle:
https://www.khanacademy.org/math/math-for-fun-and-glory/puzzles/brain-teasers/v/path-counting-brain-teaser

https://www.khanacademy.org/math/algebra2/polynomial-functions/binomial-theorem/v/binomial-theorem

https://www.khanacademy.org/math/algebra2/polynomial-functions/binomial-theorem/v/pascals-triangle-binomial-theorem


=end

def number_of_paths(n)
  #function = n! / k!(n-k)!
  
  #where triangle_rows is n
  #realized you need to multiply, not add by 2
  triangle_rows = n * 2

  #where top is n!
  top = (1..triangle_rows).reduce(:*)

  pascals_triangle = []

  #for each k in range of (0..triangle_rows)
  (0..triangle_rows).each do |k|    

    k_factorial = k == 0 ? 1 : (1..k).reduce(:*)


    #where n_k_factorial is (n-k)!
    n_k_factorial = triangle_rows == k ? 1 : triangle_rows - k


    bottom = k_factorial * ( (1..n_k_factorial).reduce(:*) )

    pascals_triangle << (top/bottom)

  end


  p_length = pascals_triangle.length
  odd_index = (p_length - 1) / 2
  even_index = p_length / 2

  
  if p_length.odd? 
    pascals_triangle[odd_index] 
  else
    pascals_triangle[even_index] + pascals_triangle[even_index -1]
  end

end


puts number_of_paths(20) #137846528820
