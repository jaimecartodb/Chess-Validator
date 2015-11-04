
class Rook < Piece
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
		@moving_min = 1
		@moving_max = 8
		@possible_horizontal_movements = []
	end

	def check_move(board, origin, destination)
	end

	##porque tenemos que pasar como input el board? Significa eso que va a ir cambiando?

end