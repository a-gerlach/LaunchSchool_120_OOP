# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

# class GoodDog
#   include Speak
# end

# class HumanBeing
#   include Speak
# end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# puts GoodDog.ancestors
# bob = HumanBeing.new
# puts "-----HumanBeing ancestors-----"
# puts HumanBeing.ancestors
# bob.speak("Hello!")

# module Output_Exam
#   def Exam(score)
#     puts "Your score is #{score} out of 15."
#   end
# end

# class Test
#   include Output_Exam
# end

# exam = Test.new
# exam.Exam(12)

# class GoodDog

#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def speak
#     "#{name} says Arf!" # this now references the getter method.
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
# end

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.info
# puts GoodDog.what_am_i



# class MyCar

#   attr_accessor :color
#   attr_reader :year

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def spray_paint
#     puts "What color shoud the car be?"
#     self.color = gets.chomp
#     puts "The color is now: #{self.color}"
#   end

#   def speed_up(input)
#     @current_speed += input
#     puts "You push the gas and are now going #{@current_speed} per hour."
#   end

#   def brake(input)
#     @current_speed -= input
#     puts "You push the brakes and decelerate #{input} mph."
#     puts "You are now going #{@current_speed} per hour."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "You park your car."
#   end

#   def self.what_am_i
#     "I'm a Car class"
#   end
# end

# fox = MyCar.new(2014, "red", "Ferrari")
# puts MyCar.what_am_i

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   @@number_of_dogs = 0

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#     @@number_of_dogs += 1    
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
  
# end

# sparky = GoodDog.new("Sparky", 4)
# p sparky
# puts "#{sparky}"

# puts GoodDog.total_number_of_dogs

# dog1 = GoodDog.new
# dig2 = GoodDog.new

# puts GoodDog.total_number_of_dogs
# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.info
# puts GoodDog.what_am_i


# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h , w)
#     self.name = n
#     self.height = h
#     self.weight = w    
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w    
#   end

#   def info
#     "#{self.name} wieghs #{self.weight} and is #{self.height} tall."    
#   end

#   def what_is_self
#     self
#   end

#   puts self
# end

# sparky = GoodDog.new("Sparky", "12 Inches", "10 lbs")
# p sparky.what_is_self



# class MyCar

#   attr_accessor :color
#   attr_reader :year

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@gas = 0
#   end

#   def spray_paint
#     puts "What color shoud the car be?"
#     self.color = gets.chomp
#     puts "The color is now: #{self.color}"
#   end

#   def speed_up(input)
#     @current_speed += input
#     puts "You push the gas and are now going #{@current_speed} per hour."
#   end

#   def brake(input)
#     @current_speed -= input
#     puts "You push the brakes and decelerate #{input} mph."
#     puts "You are now going #{@current_speed} per hour."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "You park your car."
#   end

#   def self.what_am_i
#     "I'm a Car class"
#   end

#   def self.gas_mileage(miles)
#     puts @@gas += miles * 10
#   end

#   def self.to_s
#     puts "We have redifined the to_s class for the MyCar class."
#   end

#   def to_s
#     "This is the to_s for the instances."
#     "This car was made in #{year}"
#   end
# end

# ferrari = MyCar.new(2000, "red", "new")
# # MyCar.gas_mileage(50)
# MyCar.to_s
# ferrari.to_s
# puts "-------------"
# puts ferrari

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# puts bob.name = "Bob"

# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end


# class GoodDog < Animal
#   attr_accessor :name, :height, :weight

#   def initialize(color)
#     super
#     @color = color   
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w    
#   end

#   def info
#     "#{self.name} wieghs #{self.weight} and is #{self.height} tall."    
#   end

#   def speak
#     super + " from GoodDog class."
#   end
# end

# class Cat < Animal
# end

# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age    
#   end
# end

# p BadDog.new(2, "bear")

# module Swimmable
#   def swim
#     "Im swimming!"
#   end
# end

# class Animal; end

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal

# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable
# end

# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new

# puts sparky.swim
# puts neemo.swim
# paws.swim

# module Walkable
#   def walk
#     "Im walking"
#   end
# end

# module Swimmable
#   def swim
#     "Im swimming."
#   end
# end

# module Climbable
#   def climb
#     "Im climbing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "Im an animal, and I speak!"
#   end
# end

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# puts "---GoodDog method lookup---"
# puts GoodDog.ancestors

# fido = Animal.new
# puts fido.speak
# puts fido.walk
# puts fido.swim
# puts "---Animal method lookup---"
# puts Animal.ancestors

# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end

#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end

#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# p value = Mammal.some_out_of_place_method(4)

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# buddy.speak("Arf!")
# kitty.say_name("kitty")

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a    
#   end

#   def public_disclosure
#     "#{name} in human years is #{human_years}"    
#   end

#   private

#   def human_years
#     self.age * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.human_years 
# puts sparky.public_disclosure

# class Animal
#   def a_public_method
#     "Will this work? " + self.a_protected_method
    
#   end

#   protected

#   def a_protected_method
#     "Yes, I am protected!"
#   end
# end

# fido = Animal.new
# p fido.a_public_method
# p fido.a_protected_method

# class Parent
#   def say_hi
#     p "Hi from Parent."
#   end
# end

# p Parent.superclass

# class Child < Parent
#   def say_hi
#     p "Hi, from Child."
#   end

#   def send
#     p "Send from Child..."    
#   end

#   def instance_of?
#     p "Im a fake instance"    
#   end
# end

# child = Child.new
# child.say_hi
# son = Child.new
# p son.instance_of? Child
# p son.instance_of? Parent
# #son.send :say_hi

# module Towable
#   def can_tow?(pounds)
#     pounds < 2000 ? true : false
#   end
# end

# class Vehicle

#   @@number_of_vehicles = 0

#   attr_accessor :color
#   attr_reader :year, :model

#   def self.gas_mileage(gallons, miles)
#     puts "#{miles / gallons} miles per gallon of gas"
#   end

#   def self.number_of_vehicles
#     puts "Currently there are #{@@number_of_vehicles} vehicles."
#   end

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1    
#   end

#   def self.num_of_veh
#     puts "Currently there are #{@@vehicles} vehicles."
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brakes and decelerate #{number} mph."
#     puts "You are now going #{@current_speed} per hour."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."    
#   end

#   def shut_down
#     @current_speed = 0
#     puts "You park your vehicle."
#   end

#   def spray_paint(color)
#     self.color = color
#   end

#   def age
#     puts "Your #{self.model} is #{years_old} years old."
#     #puts "The vehicle has existed for #{calculate_age} seconds."
#   end

#   private
#   def years_old
#     Time.now.year - self.year
#   end
# end


# module Horn
#   def sound_horn
#     puts "The horn goes: HONK HOOOOONK!"
#   end
# end


 
# class MyCar < Vehicle
#   NUMBER_OF_DOORS = 4

#   def to_s
#     "My car is a #{color} #{model}, built in #{year}."
#   end
# end


# class MyTruck < Vehicle
#   NUMBER_OF_DOORS = 2
#   include Horn
#   include Towable

#   def to_s
#     "My truck is a #{color} #{model}, built in #{year}."
#   end

# end

# ferrari = MyCar.new(20, "red", "Ferrari")


# ferrari.age

class Student


  def initialize(n, g)
    @name = n
    @grade = g
  end

  def to_s
    "The Student with the name #{@name}"
  end

  def give_grade
    grade
  end

  def better_grade_than?(other_student)
    if grade > other_student.grade
      true
    end
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 15)
bob = Student.new("Bob", 12)
puts joe
puts bob
puts "Well done!" if bob.better_grade_than?(joe)

