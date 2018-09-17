require_relative 'engine'

class Vehicle 
  attr_reader :color, :make, :model

  def initialize(color:, make:, model:, engine_size:, engine_horsepower:)
    @color = color
    @make = make
    @model = model
    @engine = engine(engine_size, engine_horsepower)
  end

  def start
    @engine.start
  end

  def drive
    puts "Driving a #{@color} #{@make} #{@model}"
  end

  private

  def engine(size, horsepower)
    Engine.new(size: size, horsepower: horsepower)
  end
end

