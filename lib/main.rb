require_relative 'game'

puts 'Tic Tac Toe the ruby game!'
player_one = Player.new('PlayerOne', 'X')
player_two = Player.new('PlayerTwo', 'O')
players = [player_one, player_two]
Game.new(players).play
