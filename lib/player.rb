class Player

  attr_reader :name, :sign

  def initialize(name, sign)
    @sign = Cell.new(sign)
    @name = name
  end
end
