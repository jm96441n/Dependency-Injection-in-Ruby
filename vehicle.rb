require_relative 'engine'

class Vehicle 
  attr_reader :color, :make, :model

  def initialize(color:, make:, model:)
    @color = color
    @make = make
    @model = model
    @engine = engine
  end

  def start
    @engine.start
  end

  def drive
    puts "Driving a #{@color} #{@make} #{@model}"
  end

  private

  def engine
    Engine.new(size: 150, horsepower: 500)
  end
end

