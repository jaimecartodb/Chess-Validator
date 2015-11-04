class Board

	attr_reader :grid
	def initialize(grid=default_grid)
		@grid = [[]]
	end

	def default_grid
		Array.new(8){Array.new(8) IO.read(simple_board.txt)}
	end

end
