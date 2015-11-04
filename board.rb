require 'pry'

class Board

  attr_reader :grid
  def initialize()
    @grid = default_grid 
  end

  def default_grid
    chess = Array.new(8){Array.new(8)}
    i = 0
    File.open("./simple_board.txt").each_line do |line|
            moves = line.chomp.split(" ")
#            binding.pry
            moves.each_with_index do |item, index|
                   chess[i][index] =  moves[index].to_s
                
            end
        i += 1
        end
        chess
  end
##  binding.pry

	def check_position(x, y)
		if grid[x][y] == "bR"
			then puts "hello"
		else puts "bye"
		end
	end

	def read_input_moves(n)
		file = File.read("./simple_moves.txt").split("\n")
		puts file[n]
		return file[n]
	end

	def show_possible_moves
		file = File.read("./simple_moves.txt").split("\n")		
		file.each do |item|
			puts file[item]
		end
	end

	##why does it return an error? `[]': no implicit conversion of String into Integer (TypeError)

	def read_output(n)
		file = File.read("./simple_results.txt").split("\n")
		return file[n]
	end

	def check_move(n)
		if read_output(n) == "LEGAL"
			puts "Yes, you can make that move"
		else puts "That move is illegal, please introduce another one"
		end
	end

	##how do I 

end


board = Board.new
board.check_position(0, 0)
board.read_input_moves(3)
board.check_move(1)
