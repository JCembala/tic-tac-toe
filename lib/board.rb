require_relative 'cell'

class Board

  def initialize
    @row_separator = '*---*---*---*'
    @column_separator = '|'
    @cells = Array.new(3) { Array.new(3) { Cell.new } }
  end

  def print_board
    puts @row_separator

    @cells.each do |row|
      print @column_separator
      row.each do |cell|
        cell.print_cell
        print @column_separator
      end
      puts
      puts @row_separator
    end
  end

  def put_player_sign(col, row, player)
    @cells[row][col] = player.sign
  end
end
