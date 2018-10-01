require_relative 'motorcycle'
require_relative 'car'
require_relative 'truck'
require_relative 'v12'
require_relative 'v8'
require_relative 'v6'

big_engine = V8.new(size: 600, horsepower: 850)

fast_engine = V12.new(size: 200, horsepower: 1000)

small_engine = V6.new(size: 150, horsepower: 300)

camaro = Car.new(color: 'red', make: 'Chevy', model: 'Camaro', engine: fast_engine)
motorcycle = Motorcycle.new(color: 'blue', make: 'Honda', model: 'Interceptor', engine: small_engine)
truck = Truck.new(color: 'orange', make: 'Toyota', model: 'Highlander', engine: small_engine)
el_camino = Car.new(color: 'black', make: 'Chevy', model: 'El Camino', engine: big_engine)

puts "Camaro"
camaro.start
camaro.drive

2.times { puts " " }

puts "Motorcyle"
motorcycle.start
motorcycle.drive

2.times { puts " " }

puts "Truck"
truck.start
truck.drive

2.times { puts " " }

puts "El Camino"
el_camino.start
el_camino.drive
