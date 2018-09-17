class Engine
  attr_reader :size, :horsepower

  def initialize(size:, horsepower:)
    @size = size
    @horsepower = horsepower
  end

  def start
    puts "Starting #{name} engine that is #{@size} cubic centimeters with #{@horespower} horsepower and #{cylinders} cylinders"
  end

  private

  def name
    self.class.to_s
  end

  def cylinders
    raise "Subclass must implement this method"
  end
end
