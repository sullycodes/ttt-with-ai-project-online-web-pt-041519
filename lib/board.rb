class Board

attr_accessor :cells, :current_move

  def initialize
    @cells = Array.new(9, " ")
  end
  
  def reset!
    @cells.clear
    @cells = Array.new(9, " ")
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    input = input.to_i - 1 
    @cells[input]
  end
  
  def full? 
    if @cells[0-8] != " "
      return true
    else
      false 
    end
  end
  
  def turn_count 
    @cells.count{|e| e == "X" || e == "O"}
  end

  
  def taken?(position)
    position = position.to_i - 1
    if @cells[position] == "X" || @cells[position] == "O"
      return true
    else
      return false
    end
  end
  
  def valid_move?(input)
    input = input.to_i - 1
    input.between?(0,8) && @cells[input] == " "
  end

# def move(index, token = "X")
#     @board[index] = token
#   end

  def update(input, player) 
    input = input.to_i - 1
    @cells[input] = player.token
  end

end