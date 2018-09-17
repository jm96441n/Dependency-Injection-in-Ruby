require_relative 'engine'
require_relative 'v6'
require_relative 'v8'
require_relative 'v12'

class Car
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

big_engine = V8.new(size: 600, horsepower: 850)

fast_engine = V12.new(size: 200, horsepower: 1000)

small_engine = V6.new(size: 150, horsepower: 300)

camaro = Car.new(color: 'red', make: 'Chevy', model: 'Camaro', engine: fast_engine)
blue_prius = Car.new(color: 'blue', make: 'Toyota', model: 'Prius', engine: small_engine)
orange_prius = Car.new(color: 'orangef', make: 'Toyota', model: 'Prius', engine: small_engine)
el_camino = Car.new(color: 'black', make: 'Chevy', model: 'El Camino', engine: big_engine)

puts "Camaro"
camaro.start
camaro.drive

2.times { puts " " }

puts "Prius"
blue_prius.start
blue_prius.drive

orange_prius.start
orange_prius.drive

2.times { puts " " }

puts "El Camino"
el_camino.start
el_camino.drive