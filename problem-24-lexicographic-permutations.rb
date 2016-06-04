=begin 

Find largest index i such that array[i − 1] < array[i].

Find largest index j such that j ≥ i and array[j] > array[i − 1].

Swap array[j] and array[i − 1].

Reverse the suffix starting at array[i].

=end

class LexiPerm

  @@combinations = []

  def self.find_the_suffix(arr, idx)

    start_num = idx
    end_num = 1

    i = idx

    while i < arr.length - 1
      if arr[i] >= arr[i+1]
        end_num += 1
      end

      i += 1
    end

    arr.slice(start_num, end_num)

  end


  def self.find_the_pivot(arr, idx)
    if arr[idx - 1] < arr[idx] 
      return [ idx - 1, arr[idx - 1] ]
    else
      return nil
    end
  end



  def self.find_and_swap_elements(arr, suffix, pivot, idx)
    p = pivot[0]
    p_idx = pivot[1]

    small = nil

    i = idx
    
    #find the smallest element
    suffix.each_with_index do |num, idx|
      if p < num
        i += 1

      elsif p > num
        small = arr[i - 1]
      end
    end

    #swap the pivot with the smallest element 
    arr[p_idx] = small
    arr[i - 1] = p

    #reverse the suffix and return the array
    reverse_suffix = arr.slice!(idx, suffix.length).reverse

    (reverse_suffix).each {|x| arr.push(x)}

  end




  def self.lexi_permutations(nth, *nums)

    until @@combinations.length == nth
      nums.permutation do |perm|

        perm.each_with_index do |num, idx|
          next if @@combinations.include?(perm)

          break if idx == perm.length - 1

          puts "perm is #{perm}"

          if perm[idx] >= perm[idx + 1]               
            s = find_the_suffix(perm, idx)
            p = find_the_pivot(perm, idx)
            find_and_swap_elements(perm, s, p, idx)
          end

        end #end each_with_index
      end #end permutation
    end #end until
  end #end lexi_permutations

end        


#puts LexiPerm.lexi_permutations(1000000, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

puts LexiPerm.lexi_permutations(1000000, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0)