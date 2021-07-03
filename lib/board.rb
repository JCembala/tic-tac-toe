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

  def get_cell(col, row)
    @cells[row][col]
  end

  def set_cell_value(col, row, sign)
    @cells[row][col] = sign
  end

  def game_over
    return :winner if winner?
    return :draw if draw?

    false
  end

  def draw?
    @cells.flatten.map(&:value).none_empty?
  end

  def winner?

  end
end
