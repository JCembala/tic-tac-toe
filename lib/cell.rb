# Single cell with value
class Cell
  attr_accessor :value

  def initialize
    @value = '_'
  end

  def print_cell
    print " #{@value} "
  end
end
