require_relative 'vehicle'

class Car < Vehicle
  attr_reader :color, :make, :model

  def initialize(color:, make:, model:, engine:)
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
end

