# 2. Ruby Inheritance – Vehicle Management
==========================================================================
# Base class with common attributes and methods
class Vehicle
  attr_accessor :make, :model, :fuel_level

  def initialize(make, model)
    @make = make
    @model = model
    @fuel_level = 100
  end

  def check_fuel
    puts "#{@make} #{@model} fuel level: #{@fuel_level}%"
  end

  def perform_maintenance
    puts "#{@make} #{@model} maintenance done."
  end
end

# Subclasses with specific attributes/behaviors
class Car < Vehicle
  def open_trunk
    puts "Car trunk opened."
  end
end

class Truck < Vehicle
  def load_cargo(weight)
    puts "Loaded #{weight} kg of cargo."
  end
end

class Motorcycle < Vehicle
  def pop_wheelie
    puts "Motorcycle doing a wheelie!"
  end
end

# Code reuse: All subclasses inherit check_fuel, perform_maintenance, etc.
