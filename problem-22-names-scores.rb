class NamesScore

  def initialize
  	
  	File.open("names.txt").each { |line| @string = line.gsub(/"+/,"") }
  	
  	@names_array = @string.split(",").sort{|x,y| x <=> y}
  	
  end

  def calculate_score(name)

    name.split("").map do |letter|	
      letter.ord - 64
    end.reduce(:+)

  end

  def name_score
    @scores_array = @names_array.map {|x| calculate_score(x) }

    @scores_array.map.each_with_index {|obj, idx| obj * (idx + 1) }.reduce(:+)

  end
end

puts NamesScore.new.name_score #871198282