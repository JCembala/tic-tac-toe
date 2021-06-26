require_relative 'cell'

class Board

  def initialize
    @row_separator = '*---*---*---*'
    @column_separator = '|'
    @cells = Array.new(9, Cell.new)
  end

  def print_board
    (0..2).each do |i|
      print_row_separator
      print_row(i)
    end
    print_row_separator
  end

  def print_row_separator
    puts @row_separator
  end

  def print_row(row_number)
    (0..2).each do |i|
      print @column_separator
      @cells[i + row_number].print_cell
    end
    puts @column_separator
  end
end

