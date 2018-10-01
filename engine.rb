class Engine
  attr_reader :size, :horsepower

  def initialize(size:, horsepower:)
    @size = size
    @horsepower = horsepower
  end

  def start
    puts "Starting engine that is #{@size} cubic centimeters with #{@horsepower} horsepower"
  end
end
