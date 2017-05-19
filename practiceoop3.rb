# class Person
#   def initialize(n, num)
#     @name = n
#     @@test = num
#   end

#   def name
#     @name
#   end

#   def self.name
#     @name    
#   end

#   def get_test
#     @@test
#   end

# end

# bob = Person.new("bob", 40)
# joe = Person.new("joe", 20)
# p bob
# p bob.name

# puts "--------"
# p joe
# p joe.name
# p joe.get_test


# class Animal
#   def initialize(name)
#     @name = name
#   end
# end

# class Dog < Animal
#   def initialize(name) 
#     super
#   end

#   def dog_name
#     "bark! bark! #{@name} bark! bark!"    # can @name be referenced here?
#   end
# end

# teddy = Dog.new("Teddy")
# puts teddy.dog_name

# module Swim

#   def initialize
#     @hello = "higsgfes"
#     @can_swim = true
#     @hi = "hi"
#   end
#   def enable_swimming
    
#   end

  
# end

# class Dog
#   def initialize
    
#   end
#   include Swim

#   def test
#     p @hi
#     p @hello
#   end

#   def swim
#     "swimming!" if @can_swim
#   end
# end

# teddy = Dog.new
# teddy.enable_swimming
# puts teddy.swim
# teddy.test


# class Animal
#   #@@total_animals = 0

#   def initialize
#     @@total_animals = 1
#   end
# end

# class Dog < Animal
#   def total_animals
#     @@total_animals += 10
#   end
# end

# spike = Dog.new
# p spike.total_animals 


# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def >(other_person)
#     self.age > other_person.age
#   end

#   def <(other_person)
#     self.name < other_person.age
#   end
# end   


# bob = Person.new("Bob", 49)
# kim = Person.new("Kim", 33)


# puts "bob is older than kim" if bob > kim
# puts "bob is older than kim" if kim < bob


# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

# class Truck
#   include Speed
#   def go_very_slow
#     puts "I am a heavy truck and like going very slow."
#   end
# end

# sparky = Car.new
# sparky.go_fast
# t = Truck.new
# t.go_fast

# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

# small_car = Car.new
# small_car.go_fast
# puts small_car.class

# class AngryCat
#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# p AngryCat.new

# class Fruit
#   def initialize(name)
#     name = name
#   end
# end

# class Pizza
#   def initialize(name)
#     @name = name
#   end
# end

# p Fruit.new("Banana")
# p Pizza.new("Salami")


# class Cube
#   attr_reader :volume

#   def initialize(volume)
#     @volume = volume
#   end
# end

# big_cube = Cube.new(3000)
# p big_cube.volume
# p big_cube
#puts big_cube

# class Cat
#   @@cats_count = 0

#   def initialize(type)
#     @type = type
#     @age  = 0
#     @@cats_count += 1
#   end

#   def self.cats_count
#     @@cats_count
#   end
# end


# kitty = Cat.new("black")
# p Cat.cats_count

# class Bag
#   def initialize(color, material)
#     @color = color
#     @material = material
#   end
# end

# p Bag.new("white", "plastic")
#p plastic

# class Oracle
#   def predict_the_future
#     puts "You will " + choices.sample
#   end

#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end

# class RoadTrip < Oracle
#   def chooses
#     ["visit Vegas", "fly to Fiji", "romp in Rome"]
#   end
# end

# trip = RoadTrip.new
# trip.predict_the_future
# p RoadTrip.ancestors
# p chooses.ancestors

# module Taste
#   def flavor(flavor)
#     puts "#{flavor}"
#   end
# end

# class Orange
#   include Taste
# end

# class HotSauce
#   include Taste
# end

# p Orange.ancestors
# p HotSauce.ancestors

# class BeesWax
#   attr_accessor :type
#   def initialize(type)
#     @type = type
#   end

#   def describe_type
#     puts "I am a #{type} of Bees Wax"
#   end
# end

# t = BeesWax.new("yellow")
# puts t.type
# t.type = "green"
# t.describe_type

# class Television
#   def self.manufacturer
#     puts "This is the class method"
#   end

#   def model
#     # method logic
#   end
# end

# Television::manufacturer

# This would mean that when we call a a "play" method from the a bingo
# Object we would be calling it from the bingo class and not from the
# "Game" class

# What are the benefits of using Object Oriented Programming in Ruby? 
# Think of as many as you can.
# - Create our own classes and add any behavior which we want
# - change methods for our classes 
# - complex code can be encapsulated into smaller segments


# class Greeting
#   def self.greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def self.hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# # hello = Hello.new
# # hello.hi # "Hello"

# # # hello = Hello.new
# # # hello.bye # no method error

# # # hello = Hello.new
# # # hello.greet # argument error(0 for 1)

# # hello = Hello.new
# # hello.greet("Goodbye") # "Goodbye"

# Hello.hi # no method error

# class AngryCat
#   def initialize(age, name)
#     @age  = age
#     @name = name
#   end

#   def age
#     puts @age
#   end

#   def name
#     puts @name
#   end

#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# street_cat = AngryCat.new("husky", "black")
# siemese = AngryCat.new("china", "grey")

# class Cat
#   def initialize(type)
#     @type = type
#   end

#   def to_s
#     "I am a #{@type} cat"
#   end
# end

# kitty = Cat.new("tabby")
# puts kitty

# class Television
#   def self.manufacturer
#     # method logic
#   end

#   def model
#     # method logic
#   end
# end

# tv = Television.new
# #tv.manufacturer # no method error. Calling a class method with an instance
# tv.model # this would call the instance mehtod model.

# Television.manufacturer # this would work. We are calling a class method with a class
# Television.model # calling a instance method with a class. Gives us an error.


# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age  = 0
#   end

#   def test(older)
#     age = older
#   end

#   def make_one_year_older
#     @age = 1
#   end
# end

# kitty = Cat.new("grey")
# puts kitty.age
# kitty.make_one_year_older
# puts kitty.age
# kitty.test(100)
# puts kitty.age

# class BankAccount
#   attr_accessor :balance

#   def initialize(starting_balance)
#     @balance = starting_balance
#   end

#   def positive_balance?
#     balance >= 0
#   end
# end

# checking = BankAccount.new(100)
# puts checking.positive_balance?

# class Test
#   #attr_writer :number
#   attr_reader :number
#   def initialize(n)
#     @number = n
#   end

#   def get_the_number
#     number
#   end

#   def new_number(arg)
#     @number = arg
#   end
# end

# hello = Test.new(10)
# puts hello.number
# puts hello.get_the_number
# hello.new_number(890)
# puts hello.number
# hello.number = 3190
# puts hello.number

# class InvoiceEntry
#   attr_accessor :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     # prevent negative quantities from being set
#     self.quantity = updated_count if updated_count >= 0
#   end
# end

# shipment = InvoiceEntry.new("garlic", 200)
# shipment.update_quantity(20)
# puts shipment.quantity = -10
# puts shipment.quantity

# class Greeting
#   def greet(string)
#     puts string
#   end
# end

# class Hello < Greeting
#   def hi
#     greet "Hello"
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet"Goodbye"
#   end
# end

# h = Hello.new
# h.hi
# g = Goodbye.new
# g.bye

# class KrispyKreme
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end

#   def to_s
#     if @filling_type == nil && @glazing == nil
#       "Plain"
#     elsif @glazing == nil
#       "#{@filling_type}"
#     elsif @filling_type == nil
#       "Plain with #{@glazing}"
#     else
#       "#{@filling_type} with #{@glazing}"
#     end
#   end
# end

# donut1 = KrispyKreme.new(nil, nil)
# puts donut1
# donut2 = KrispyKreme.new("Vanilla", nil)
# puts donut2
# donut3 = KrispyKreme.new(nil, "sugar")
# puts donut3
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# puts donut4
# donut5 = KrispyKreme.new("Custard", "icing")
# puts donut5

# class Computer


#   def create_template
#     @template = "template 14231" # initialize instance var
#   end

#   def show_template
#     @template # use the getter method to access it
#   end
# end

# c = Computer.new
# c.create_template
# puts c.show_template

# class Computer


#   def create_template
#     self.template = "template 14231" # using the setter method to create an instance var
#   end

#   def show_template
#     self.template # calling the getter method on self for template
#   end
# end

# c = Computer.new
# c.create_template
# puts c.show_template

# get_into
# info

# class SecretFile
#   attr_reader :data, :log
#   @@clog = []

#   def initialize(secret_data)
#     @data = secret_data
#     #@log = SecurityLogger.new
#     @log = [] 
#     @log << SecurityLogger.new

#     @@clog << SecurityLogger.new
#   end

#   def self.show_log
#     @@clog
#   end
# end

# class SecurityLogger
#   def create_log_entry
#     # ... implementation omitted ...
#   end
# end


# a = SecretFile.new("data")
# b = SecretFile.new("files")
# p SecretFile::show_log
# p a.create_log_entry

# module range
#   def range
#     @fuel_capacity * @fuel_efficiency
#   end
# end

# class WheeledVehicle
#   attr_accessor :speed, :heading

#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end

#   def range
#     @fuel_capacity * @fuel_efficiency
#   end
# end

# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
#   attr_accessor :propeller_count, :hull_count, :speed, :heading

#   include range
#   include seaborn_range

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     @num_p = num_propellers
#     @num_h = num_hulls
#     @km_t = km_traveled_per_liter
#     @liters_of_fuel_capacity = liters_of_fuel_capacity
#   end
# end

# module seaborn_range
#   def range
#     (@fuel_capacity * @fuel_efficiency) + 10
#   end

# end

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Catamaran
  include Moveable

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
    self.hull_count = num_hulls
    self.propeller_count = num_propellers

    # ... other code to track catamaran-specific data omitted ...
  end
end

class Motorboat < Catamaran
 def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
   super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
 end
end

class Auto < WheeledVehicle
  def initialize(a, b, c)
    # # 4 tires are various tire pressures
    super(a, b, c)#([30,30,32,32], 50, 25.0)
  end
end


cata = Catamaran.new(1, 2, 3, 4)
p cata

moto = Motorboat.new(5, 6)
p moto

# p c = Auto.new(1, 2, 3)
# p c.range
# p c.tire_pressure(3)

# Building on the prior vehicles question, we now must also track a basic motorboat. 
# A motorboat has a single propeller and hull, but otherwise behaves similar to a catamaran. Therefore, creators of Motorboat 
# instances don't need to specify number of hulls or propellers. 
# How would you modify the vehicles code to incorporate a new Motorboat class?
# single propeller and single hull, otherwise the same as catamaran. Dont need to specify number of hulls or propellers