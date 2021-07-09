# Single cell with value
class Cell

  attr_accessor :value

  def initialize(value = '')
    @value = value
  end

  def print_cell
    print @value.empty? ? '   ' : " #{@value} "
  end
end
