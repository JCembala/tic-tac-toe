require_relative 'game'
require_relative 'board'

game = Game.new
game.start

board = Board.new
board.print_board
