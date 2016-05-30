#############################################
# Solution #1
#############################################


class LatticePath

  def initialize(rows, columns)
    @grid = Array.new(rows){ Array.new(columns) {"_"} }

    @route = []
    @routes_array = []

    @row = 0
    @column = 0

    @start = @grid[0][0]

    @target = @grid[rows - 1][columns - 1]




    @went_right_first = false

  end


  def go_to_target
    
    while @target != "X"
      if @went_right_first
        move_down
      else
        move_right
      end
    end

    @went_right_first == false ? true : false

    add_route_and_reset

  end

  def add_route_and_reset

    @routes_array << @route if !@routes_array.include?(@route)
    
    @route.clear

  end


  def move_right
    row_position = @grid[@row][@column]
    row_length = @grid[@row][@column].length
    
    while @column < row_length

      #continues down row until blocked by X
      if row_position == "_"
        row_position = "X" #mark @grid[@row][@column] with X


        #send X-coord to @route array to mark down possible route
        @route << [@row, @column] 
      @column += 1

      elsif row_position == "X"
        if @first_step_right == "X"
          next
        else
         @column -= 1 #need to reset @row to last value to move_down
         break
        end
      end

    end

    @row += 1 #increments @row to move to the next row in the grid

    check_to_move_down #checks to see if you can move down after incrementing row
      
  end


  def move_down
    column_position = @grid[@row][@column]
    column_length = @grid[@row]

    while column_position != nil 

      #continues down column until blocked by X
      if column_position == "_"
        column_position = "X" #mark @grid[@row][@column] with X


        #send X-coord to @route array to mark down possible route
        @route << [@row, @column]
      @row += 1

      elsif column_position == "X" || column_length.nil?
        if @first_step_down == "X"
          next
        else
          break
        end
      end

    end

    @row -= 1 #decrements to move back to last row because path is blocked
    check_to_move_right
  end


  def check_to_move_right
    current_position = @grid[@row][@column]

    if current_position.next == "_"
      move_right
    end
  end



  def check_to_move_down
    current_position = @column
    row_length = @grid[@row][@column].length

    #when you reach the end of the row
    if current_position == row_length
      @column -= 1

      move_down  

    #when the next row_position has an X
    elsif row_position.next == "X"
      move_down 
    end
  end



  def show_grid
    @grid.inspect
  end

end



test = LatticePath.new(20, 20)

test.go_to_target

puts "The number of routes is #{@routes_array.length}"
