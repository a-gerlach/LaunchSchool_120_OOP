# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class

# module Walkable
#   def walk
#     puts "Lets go for a walk"
#   end
# end

# class Cat
#   include Walkable
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.name = "Luna"
# kitty.walk

# class Cat
#   def self.generic_greeting
#     puts "Hello Im a cat"
#   end
# end

# #Cat.generic_greeting

# kitty = Cat.new
# kitty.class.generic_greeting

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def rename(new_name)
#     self.name = new_name
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.name
# kitty.rename('Chloe')
# p kitty.name

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify


# class Cat
#   COLOR = "purple"
#   attr_reader :name

#   @@cats = 0

#   def initialize(name)
#     @name = name
#     @@cats += 1
#   end

#   def greet
#     puts "Hello! My name is #{name} and Im a #{COLOR} cat."
#   end

#   def self.total
#     @@cats
#   end

#   def self.generic_greeting
#     puts "Hello Im a cat!"
#   end
#   def personal_greeting
#     puts "Hello My name is #{name}"
#   end
# end


# kitty = Cat.new("Sophie")
# kitty.greet

# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "Im #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

# class Person
#   attr_accessor :secret
# end

# class Test
#   person1 = Person.new
#   person1.secret = 'Shh.. this is a secret!'
#   puts person1.secret
# end

# class Person
#   attr_writer :secret

#   def share_secret
#     puts "#{secret}"
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

# class Person
#   attr_writer :secret

#   def compare_secret(other_person)
#     puts secret == other_person.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# person1.compare_secret(person2)

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle

# end

# class Car < Vehicle

# end

# truck1 = Truck.new(1994)
# puts truck1.year

# car1 = Car.new(2006)
# puts car1.year


# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year

#   end
# end

# class Truck < Vehicle
#   def initialize(year)
#     super(year)
#     start_engine
#   end
#   def start_engine
#     puts 'Ready to go!'
#   end
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   attr_reader :bed_type
#   def initialize(year, bed_type)
#     super(year)
#     @bed_type = bed_type
#   end
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type

# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#     "#{super()} Drive #{speed}, please"
#     #super() + " Drive #{speed}, please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# module Towable
#   def tow
#     "I can tow a trailer!"
#   end
# end

# class Truck
#   include Towable
# end

# class Car
# end

# # truck1 = Truck.new
# # puts truck1.tow

# puts Truck.new.tow

# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year


# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# cat1 = Cat.new('Black')
# cat1.color
# p Cat.ancestors

# class Animal
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# p Cat.ancestors
# # cat1 = Cat.new('Black')
# # cat1.color

# module Flyable
#   def fly
#     "I'm flying!"
#   end
# end

# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
#   include Flyable
# end

# bird1 = Bird.new('Red')
# p bird1.color
# p Bird.ancestors


# module Transportation
#   class Vehicle

#   end

#   class Truck < Vehicle

#   end

#   class Car < Vehicle

#   end
# end

# class Person
#   attr_accessor :name
# end

# person1 = Person.new
# person1.name = 'Jessica'
# puts person1.name

# class Person
#   attr_accessor :name
#   attr_writer :phone_number
# end

# person1 = Person.new
# person1.name = 'Jessica'
# person1.phone_number = '0123456789'
# puts person1.name
# p person1

# class Person
#   attr_reader :phone_number

#   def initialize(number)
#     @phone_number = number
#   end


# end

# person1 = Person.new(1234567899)
# puts person1.phone_number

# person1.phone_number = 9987654321

# class Person
#   attr_writer :last_name
#   attr_accessor :first_name

#   def first_equals_last?
#     first_name == last_name
#   end

#   private

#   attr_reader :last_name
# end

# person1 = Person.new
# person1.first_name = 'Dave'
# person1.last_name = 'Smith'
# puts person1.first_equals_last?

# class Person
#   attr_writer :age

#   def older_than?(other)
#     age > other.age
#   end

#   protected

#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

# class Person
#   attr_writer :name


#   def name
#     @name.capitalize
#   end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

# class Person
#   attr_reader :name

#   def name=(name)
#     @name = "Mr. "  << name
#   end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name

# class Person
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def reverse!
#     @name.reverse
#   end
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name

# class Person

#   def age=(age)
#     @age = age * 2
#   end

#   def age
#     @age * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# class Person
#   attr_accessor :name

#   def name=(name)
#     @first_name = name.split(" ")[0]
#     @last_name = name.split(" ")[1]
#   end

#   def name
#     "#{@first_name} #{@last_name}"
#   end
# end

# person1 = Person.new
# person1.name = 'John Doe'
# puts person1.name

# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+" + "-" + "-" * @message.length + "-"  + "+"
#   end

#   def empty_line
#     "|" + " " + " " * @message.length + " " + "|"
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new("To boldly go where no one has gone before.")
# puts banner

# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     #@name.upcase!
#     "My name is #{@name.upcase}."
#   end
# end

# name = 'Fluffy' # set the name var to "Fluff"
# fluffy = Pet.new(name) #  create a new object and pas name into the initialize methdo
# puts fluffy.name # "Fluffy"
# puts fluffy # "My name is FLUFFY"
# puts fluffy.name # FLUFFY 
# puts name # Fluffy

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# class Book
#   attr_accessor :title, :author

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# class Person
#   #attr_writer :first_name, :last_name

#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def first_name=(first_name)
#     @first_name = first_name.capitalize
#   end

#   def last_name=(last_name)
#     @last_name = last_name.capitalize
#   end

#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person


# class Flight

#   def initialize(flight_number)
#     @database_handle = Database.init
#     @flight_number = flight_number
#   end

#   private

#   attr_accessor :database_handle

# end

# require "pry"

# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total

#   end

#   def print_mileage
#     puts mileage
#     #binding.pry
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage 

# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(number)
#     super(number, number)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# class Pet
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet

#   attr_reader :name, :age, :fur_color

#   def initialize(n, a, f)
#     super(n, a)
#     @fur_color = f
#   end

#   def to_s
#     "My cat #{name} is #{age} years old and has #{fur_color} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# class Vehicles
#   attr_reader :make, :model, :wheels

#   def initialize(make, model, wheels)
#     @make = make
#     @model = model
#     @wheels = wheels
#   end

#   def to_s
#     "#{make} #{model}"
#   end
# end

# class Car < Vehicles  
  
# end

# class Motorcycle < Vehicles

# end

# class Truck < Vehicles
#   attr_reader :payload

#   def initialize(make, model, wheels, payload)
#     super(make, model, wheels)
#     @payload = payload
#   end
# end

# fer = Car.new("ferrari","enzo", 4)
# p fer

# class Book
#   attr_reader :author, :title

#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)


# module Mailable
#   def print_address
#     puts "#{name}"
#     puts "#{address}"
#     puts "#{city}, #{state} #{zipcode}"
#   end
# end

# class Customer
#   include Mailable
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# class Employee
#   include Mailable
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# betty = Customer.new 
# bob = Employee.new
# betty.print_address
# bob.print_address
# p betty


# module Drivable
#   def drive
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive

# class House
#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end

#   def <(other_house)
#     if price < other_house.price
#       "Home 1 is cheaper"
#     elsif price > other_house.price
#       "Home 2 is more expensive"
#     end
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1

# class Transform
#   attr_reader :string

#   def initialize(string)
#     @string = string
#   end

#   def uppercase
#     string.upcase
#   end

#   def self.lowercase(input)
#     input.downcase
#   end
# end

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

# class Something
#   def initialize
#     @data = 'Hello'
#   end
  
#   def dupdata
#     @data + @data
#   end

#   def self.dupdata
#     'ByeBye'
#   end
# end

# thing = Something.new
# puts Something.dupdata # "ByeBye"
# puts thing.dupdata # "Hello + Hello"

# class Wallet
  
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end

#   protected

#   attr_reader :amount
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(500)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end

# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     pets.each { |pet| puts pet }
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#   end

#   def adopt(owner, pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end


# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')
# asta         = Pet.new('dog', 'Asta')
# lolly        = Pet.new('dog', 'lolly')
# fluffy        = Pet.new('cat', 'fluffy')
# fluffy        = Pet.new('cat', 'fluffy')
# kat       = Pet.new("cat", "Kat")
# ben         = Pet.new("cat", "Ben")
# chatterbox         = Pet.new("parakeet", "Chatterbox")
# bluebell   = Pet.new("parakeet", "Bluebell")

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')


# shelter = Shelter.new

# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.print_adoptions
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions


# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# animal_shelter = Owner.new("The Animal Shelter")
# shelter.adopt(animal_shelter, asta)
# puts "#{animal_shelter.name} has #{animal_shelter.number_of_pets} unadopted pets."


# class Expander
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     expand(3)
#   end

#   private

#   def expand(n)
#     @string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander

# module Walkable
#   def walk
#     puts "#{name} #{gait} forwards"
#   end
# end

# class Person
#   include Walkable
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Noble
#   attr_reader :name, :title
#   def initialize(n, t)
#     @name = n
#     @title = t
#   end

#   def gait
#     "struts"
#   end
# end



# class Cat
#   include Walkable
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   include Walkable
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# mike = Person.new("Mike")
# mike.walk

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk

# class Machine
  

#   def start
#     flip_switch(:on)
#   end

#   def stop
#     flip_switch(:off)
#   end

#   private

#   attr_writer :switch

#   def flip_switch(desired_state)
#     switch = desired_state
#   end

# end


# class FixedArray
#   attr_accessor :array
#   def initialize(length)
#     @array = []
#     @array << [nil] * length
#   end

#   def [](idx)
#     array[idx]
#   end

#   def []=(idx, obj)
#     array[idx] = obj
#   end
 
#   def to_a
#     array.inspect
#   end
# end

# fixed_array = FixedArray.new(5)
# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5

# fixed_array[3] = 'a'
# puts fixed_array.to_a


# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end
# end

# class Undergraduate < Student
#   def initialize(name, year)
#     super(name, year)   
#   end
# end


# class Minilang
#   attr_accessor :stack, :register
#   attr_reader :input
#   def initialize(input)
#     p @input = input.split(" ")
#     @stack = []
#     @register = []
#   end

#   def eval
#     input.each do |ele|
#       if ele.start_with?("PR")
#         print_register
#       elsif ele.to_i != 0
#         register.pop
#         register << ele
#       elsif ele.start_with?("PU")
#         stack << register[0]        
#       elsif ele.start_with?("MU")
#         register << stack.pop.to_i * register.pop.to_i
#       elsif ele.start_with?("AD")
#         register << stack.pop.to_i + register.pop.to_i
#       elsif ele.start_with?("PO")
#         register << stack.pop
#       elsif ele.start_with?("PO")
#       end
#     end
#     print_register
#     print_stack
#   end

#   def print_stack
#     puts "This is the stack #{stack}"
#   end

#   def print_register
#     puts "This is the register: #{register}"
#   end

# end

# Minilang.new('3 PUSH PUSH 7 DIV').eval



# class Number
#   def generate_number
#     #rand(1..100)
#     Math.log2(size_of_range).to_i + 1
#   end
# end

# class PingGame
#   attr_accessor :number
#   attr_reader :target, :answer

#   def initialize(first_num, last_num)
#     @first_num = first_num
#     @last_num = last_num
#     @target = (first_num..last_num).to_a.sample
#     #@number = (first_num..last_num).to_a.sample#Number.new
#     @@guesses = 10
#   end

#   def generate_number
#     #rand(1..100)
#     #Math.log2(100, 150).to_i + 1
#     @number
#   end

#   def play
#     display_welcome_message
#     loop do
#       display_remaining_guesses
#       take_a_guess
#       check_number
#       increment_guesses
      
#       break if check_number_bin
#       break if no_more_guesses
#     end
#   end

#   def display_congrats
#     puts "You win!"
#     puts "And it only took you " + (7 - @@guesses).to_s + " guesses"
#   end

#   def no_more_guesses
#     if @@guesses == 0
#       puts "You have no more guesses left and have lost the game!"
#       puts "The number was: #{target}"
#       true
#     end
#   end

#   def display_remaining_guesses
#     puts "You have #{@@guesses} guesses left."
#   end

#   def check_number_bin
#     if target == answer
#       puts "You win!"
#       puts "And it only took you " + (10 - @@guesses).to_s + " guesses"
#       true
#     end
#   end

#   def check_number
#     if target == answer
#       true
#     elsif target > answer
#       puts "Your answer is too low"
#       false
#     elsif target < answer
#       puts "Your answer is too high"
#       false
#     end
#   end

#   def take_a_guess
#     puts "Enter a number between #{@first_num} and #{@last_num}:"
#     @answer = gets.chomp.to_i    
#   end

#   def display_welcome_message
#     puts "Guess the number between #{@first_num} and #{@last_num}."    
#   end

#   def increment_guesses
#     @@guesses -= 1
#   end

# end

# game = PingGame.new(501, 4000)
# game.play

# class Card
#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def min
#     puts @rank.min
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end
# end

# cards = [Card.new(2, 'Hearts'),
#          Card.new(10, 'Diamonds'),
#          Card.new(8, 'Clubs')]
# puts cards
# p cards.min

# class Card
#   attr_reader :rank, :suit
#   include Comparable

#   VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end

#   def value
#     VALUES.fetch(@rank, @rank)
#   end

#   def <=>(other_card)
#     value <=> other_card.value
#   end
# end

# cards = [Card.new(2, 'Hearts'),
#          Card.new(10, 'Diamonds'),
#          Card.new(8, 'Clubs')]
# puts cards
# puts cards.min


# class Animal
#   def speaks
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end

# sparky = GoodDog.new
# puts sparky.speak  

# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super("Joe")
#     @color = color
#   end
# end

# bruno = GoodDog.new("brown")  
# p bruno

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a
#   end

#   def get_human_years
#     human_years
#   end

#   private

#   def human_years
#     age * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# p sparky.get_human_years

# class Person
#   attr_accessor :first_name, :last_name
#   attr_reader :name

#   def initialize(first_name, last_name = "")
#     @first_name = first_name
#     @last_name = last_name
#     @name = first_name + " " + last_name
#   end

#   def name
#     self.name = first_name + " " + last_name
#     @name.chomp
#   end

#   protected

#   attr_writer :name
# end

# bob = Person.new('Robert')
# p bob.name                  #
# p bob.first_name
# p bob.last_name
# bob.last_name = "Smith"
# p bob.name

# bob.name = "John Adams"


# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   def compare_name(other_person)
#     name == other_person.name
#   end

#   private

#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')
# p bob.compare_name(rob)


# class Dog
#   def speak
#     'bark!'
#   end

#   def swim
#     'swimming!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "Cant swim"
#   end
# end

# teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim  

# class Greeting
#   def greet(argument)
#     puts argument
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# Goodbye.new.bye
# Hello.new.hi

# class Catamaran
#   include Moveable

#   attr_accessor :propeller_count, :hull_count

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity

#     # ... other code to track catamaran-specific data omitted ...
#   end
# end

# class Motorboat < Catamaran
#   def initialize
#     super(1, 1)
#   end
# end

# module Walkable
#   def walk
#     puts "Lets go for a walk."
#   end
# end

# class Cat
#   include Walkable
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.walk

# class Cat
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
# end

# kitty = Cat.new
# kitty.class.generic_greeting

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify

# class Cat
#   attr_reader :name
#   @@total = 0
#   COLOR = "red"

#   def initialize(name)
#     @name = name
#     @@total += 1
#   end

#   def self.generic_greeting
#     puts "Hello Im a cat"
#   end

#   def greet
#     puts "Hi my name is #{name} and im a #{COLOR} cat"
#   end

#   def to_s
#     "Im #{name}"
#   end

#   def self.total
#     puts @@total
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

# class Person
#   attr_accessor :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

# class Person
#   attr_writer :secret

#   def share_secret
#     puts "#{secret}"
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret


# class Person
#   attr_writer :secret

#   def compare_secret(other_person)
#     p secret == other_person.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# person1.compare_secret(person2)

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# car1 = Car.new(2006)
# puts car1.year

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle

#   def initialize(year)
#     super
#     start_engine
#   end
#   def start_engine
#     puts 'Ready to go!'
#   end
# end

# truck1 = Truck.new(1994)
# puts truck1.year


# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   attr_reader :bed_type
#   def initialize(year, bed_type)
#     super(year)
#     @bed_type = bed_type
#   end
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type

# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#     super() + " Drive #{speed}, please!" 
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# module Towable
#   def tow
#     "I can tow"
#   end
# end

# class Truck
#   include Towable
# end

# class Car
# end

# truck1 = Truck.new
# puts truck1.tow

# class Vehicle
#   attr_reader :year
#   def initialize(year)
#     @year = year
#   end
# end

# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year

# class Person
#   attr_writer :age
#   def older_than?(other)
#     age > other.age
#   end

#   protected

#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

# class Person
#   attr_reader :name

#   def name=(name)
#     @name = name.capitalize
#   end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

# class Person
#   attr_reader :name

#   def name=(name)
#     @name = "Mr. #{name}"
#   end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name


# class Person
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def reverse!
#     name.reverse
#   end
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name


# class Person
#   def age=(age)
#     @age = age * 2
#   end

#   def age
#     @age * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# class Person

#   def name=(name)
#     @first_name = name.split(" ").first
#     @last_name = name.split(" ").last
#   end

#   def name
#     @first_name + " " + @last_name
#   end
# end

# person1 = Person.new
# person1.name = 'John Doe'
# puts person1.name

# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+-" + "-" * @message.length + "-+"
#   end

#   def empty_line
#     "| " + " " * @message.length + " |" 
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner
# # +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     @name.upcase!
#     "My name is #{@name}."
#   end
# end

# # name = 'Fluffy'
# # fluffy = Pet.new(name)
# # puts fluffy.name
# # puts fluffy
# # puts fluffy.name
# # puts name

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# class Book
#   attr_reader :title, :author
#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)


# class Book
#   attr_accessor :title, :author
#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# class Person
#   attr_writer :first_name, :last_name
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def to_s
#     "#{@first_name.capitalize} #{@last_name.capitalize}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person


# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person

# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage

# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(side)
#     super(side, side)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"


# class Pet
#   def initialize(name, age, color)
#     @name = name
#     @age = age
#     @color = color
#   end

#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@color} fur"
#   end
# end

# class Cat < Pet
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# class Vehicle

#   def initialize(make, model)
#     @make = make
#     @model = model
#   end

#   def to_s
#     "#{make} #{model}"
#   end

# end

# class Car < Vehicle
#   attr_reader :make, :model

#   def initialize(make, model)
#     super
#   end

#   def wheels
#     4
#   end  
# end

# class Motorcycle < Vehicle
#   attr_reader :make, :model

#   def initialize(make, model)
#     super
#   end

#   def wheels
#     2
#   end
# end

# class Truck < Vehicle
#   attr_reader :make, :model, :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end

# ducati = Motorcycle.new("new", "red")
# puts ducati
# fer = Car.new("italien", "old")
# puts fer

# module Mailable
#   def print_address
#     puts "#{name}"
#     puts "#{address}"
#     puts "#{city}, #{state} #{zipcode}"
#   end
# end

# class Customer
#   include Mailable
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# class Employee
#   include Mailable
#   attr_reader :name, :address, :city, :state, :zipcode
# end

# betty = Customer.new 
# bob = Employee.new
# betty.print_address
# bob.print_address

# class House
#   attr_reader :price
#   include Comparable

#   def initialize(price)
#     @price = price
#   end

#   def <=>(other)
#     price <=> other.price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1

# class Transform
#   def initialize(data)
#     @data = data
#   end

#   def uppercase
#     @data.upcase
#   end

#   def self.lowercase(input)
#     input.downcase
#   end
# end

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')


# class Wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end

#   protected
#   attr_reader :amount


# end

# bills_wallet = Wallet.new(465)
# pennys_wallet = Wallet.new(465)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end




# class Pet
#   attr_reader :type, :name
#   def initialize(type, name)
#     @type = type
#     @name = name
#   end
# end

# class Owner
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# class Shelter

#   def initialize
#    @@owner = []
#     @pets = []
#   end


#   def adopt(owner, animal)
#     @owner = owner
#     @pets << animal
#   end

#   def print_adoptions
#     "#{owner.name} has adopted the following animals:"
#     pets.each do |x|
#       "a #{x.type} name #{x.name}"
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions

# class Expander
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     expand(3)
#   end

#   private

#   def expand(n)
#     @string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander

# module Walkable
#   def walk
#     "#{name} #{gait} forward"
#   end
# end

# class Noble
#   include Walkable

#   def initialize(title, name)
#     @title = title
#     @name = name
#   end

#   def walk
#     @name = @name + " " + @title
#     super
#   end
# end

# byron = Noble.new("Byron", "Lord")
# p byron.walk

# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = true
#   end
# end

# class Undergraduate < Student

# end
#  bob = Undergraduate.new("Bob", 2009)
#  puts bob

# class Number
#   attr_reader :random_number
  
#   def initialize
#     @random_number = rand(1..100)
#   end
# end

# class PingGame
#   attr_reader :number
#   attr_accessor :player_guess
#   def initialize
#     @number = Number.new
#     @guesses = 7
#     @player_guess = nil
#   end

#   def guesses_remaining
#     puts "You have #{@guesses} guesses remaining."
#   end

#   def enter_number_message
#     puts "Enter a number between 1 and 100: "
#   end

#   def get_number
#     self.player_guess = gets.chomp.to_i    
#   end

#   def high_or_low
#     if player_guess > number.random_number
#       puts "Your guess is too high"
#     else
#       puts "Your guess is too low"
#     end
#   end

#   def one_less_guess
#     @guesses -= 1
#   end

#   def no_more_guesses
#     if @guesses == 0
#       puts "You have no more guesses!"
#       puts "The number was #{@number.random_number}"
#       return true
#     else
#       false
#     end   
#   end

#   def right_guess
#     if player_guess == @number.random_number
#       puts "You got the number"
#       puts "And it only took you #{8 - @guesses} trys."
#       true
#     end
    
#   end

#   def play
#     p @number.random_number
#     loop do
#       guesses_remaining
#       enter_number_message
#       get_number
#       break if right_guess
#       #break if (player_guess == @number.random_number)
#       high_or_low
#       one_less_guess
#       break if no_more_guesses
#     end
#   end
# end

# game = PingGame.new
# game.play


# def compare(string)
#   puts "Output:"
#   puts "Before: #{string}"
#   yield(string)
#   puts "After: #{string}"
# end

# compare("hi") { |word| word.upcase! }

# def times(number)
#   (0...number).each do |x|
#     yield x
#   end
#   number
# end

# times(5) do |num|
#   puts num
# end

# array = [1, 2, 3, 4, 5]

# def select(arr)
#   result = []
#   arr.each do |x|
#     result << x if yield(x)
#   end
#   p result
# end

# select(array) { |num| num.odd? }
# select(array) { |num| puts num }  
# select(array) { |num| num + 1 } 


# array = [1, 2, 3, 4, 5]

# def reduce(arr, start=0)
#   result = 0
#   arr.each do |x|
#     result += yield(0, x)
#   end
#   p result + start
# end

# reduce(array, 10) { |acc, num| acc + num }

# class Todo
#   DONE_MARKER = 'X'
#   UNDONE_MARKER = ' '

#   attr_accessor :title, :description, :done

#   def initialize(title, description='')
#     @title = title
#     @description = description
#     @done = false
#   end

#   def done!
#     self.done = true
#   end

#   def done?
#     done
#   end

#   def undone!
#     self.done = false
#   end

#   def to_s
#     "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
#   end
# end

# class TodoList
#   attr_accessor :title

#   def initialize(title)
#     @title = title
#     @todos = []
#   end

#   def add(item)
#     @todos << item if item.instance_of? Todo
#   end

#   def size
#     @todos.size
#   end

#   def first
#     @todos.first
#   end

#   def last
#     @todos.last
#   end

#   def mark_done_at(index)
#     @todos[index].done!
#   end

#   def mark_undone_at(index)
#     @todos[index].undone!
#   end


#   def to_s
#     puts "---- #{title} ---- "
#     @todos.each {|ele| puts ele}
#   end

#   def each
#     @todos.each do |todo|
#       yield(todo)
#     end
#   end

#   def all_done
#     select { |todo| todo.done?}
#   end

#   def all_not_done
#     select { |todo| !todo.done?}
#   end



#   def find_by_title(title)
#     select { |todo| todo.title == title }.first
#   end

#   def select
#     list = TodoList.new(title)
#     @todos.each do |x|
#       list.add(x) if yield(x)
#     end
#     list
#   end

#   def item_at(index)
#     if index < 0 || index > @todos.size
#       puts "Your index is wrong!"
#     else
#       @todos[index]
#     end    
#   end
# end

# todo1 = Todo.new("Buy milk")
# todo2 = Todo.new("Clean room")
# todo3 = Todo.new("Go to gym")
# list = TodoList.new("Today's Todos")

# list.add(todo1)
# list.add(todo2)                 
# list.add(todo3)

# todo1.done!
# p list.find_by_title("Go to gym")

# class Tree
#   include Enumerable
# end



# results = list.select { |todo| todo.done? }   

# puts results.inspect

# list.each do |todo|
#   puts todo                   # calls Todo#to_s
# end  



# def compute
#   if block_given?
#     yield
#   else
#     puts "Does not compute"
#   end
# end

# p compute { 5 + 3 } == 8
# compute { 'a' + 'b' } == 'ab'
# compute == 'Does not compute.'

# def missing(arr)
#   result = (arr.min..arr.max).to_a
#   arr.each do |x|
#     result.delete(x)
#   end
#   p result
# end

# missing([-3, -2, 1, 5])
# missing([1, 2, 3, 4])
# missing([1, 5])
# missing([6])

# def divisors(num)
#   result = []
#   (1..num).each do |x|
#     result << x if num % x == 0
#   end
#   p result
# end

# divisors(12)
# divisors(7) 
# divisors(98)


# def any?(arr)
#   arr.each do |x|
#     p x
#     return true if yield(x)
#   end
#   false
# end

# p any?([2, 3, 5, 7]) { |value| value.even? }


# def all?(arr)
#   arr.each do |x|
#     p x
#     return false if !yield(x)
#   end
#   true
# end



# p all?([2, 4, 6, 8]) { |value| value.even? }


# def none?(arr)
#   arr.each do |x|
#     p x 
#     return false if yield(x)
#   end
#   true
# end

# p none?([2, 3, 5, 7]) { |value| value.even? }

# def one?(arr)
#   result = []
#   arr.each do |x|
#     p x
#     result << x if yield(x)
#     return false if result.size == 2
#   end
#   if result.size == 1
#     true
#   else
#     false
#   end
# end

# p one?([1, 3, 5, 7]) { |value| false } 

# def count(arr)
#   counter = 0
#   arr.each do |x|
#     counter += 1 if yield(x)
#   end
#   p counter
# end

# count([1,2,3,4,5]) { |value| value % 3 == 1 }

# def step(start, limit, step)
#   value = start
#   loop do
#     yield(value)
#     value += step
#     break if value > limit
#   end
# end

# step(1, 10, 3) { |value| puts "value = #{value}" }

# def zip(arr1, arr2)
#   counter = 0
#   result = []
#   loop do
#     result << [arr1[counter], arr2[counter]]
   
#     counter += 1
#     break if counter == arr1.size
#   end
#   p result
# end

# zip([1, 2, 3], [4, 5, 6])

# def map(arr)
#   result = []
#   arr.each do |x|
#     result << yield(x)
#   end
#   p result
# end

# map([1, 3, 6]) { |value| value**2 }
# map([]) { |value| true } 
# map(['a', 'b', 'c', 'd']) { |value| false } 
# map(['a', 'b', 'c', 'd']) { |value| value.upcase }

# def count(*arr)
#   count = 0
#   arr.each do |x|
#     p x
#     count += 1 if yield(x)
#   end
#   p count
# end

# count(1, 3, 6) { |value| value - 6}

# def drop_while(arr)
#   result = []
#   include_it = false
#   arr.each do |x|
#     include_it = true if !yield(x)
#     if include_it
#       result << x
#     end
#   end  
#   p result
# end


# drop_while([1, 2, 5, 6]) { |value| value.odd? }

# def each_with_index(arr)
#   counter = 0
#   arr.each do |x|
#     yield(x, counter)
#     counter += 1
#   end
# end

# each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# def each_with_object(arr, object)
#   arr.each do |x|
#     yield(x, object)
#   end
#   object 
# end

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << value**2
# end

# p result
# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end
# p result

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result

# def max_by(arr)
#   result = -111000
#   real_result = 0
#   arr.each do |x|
#     p yield(x)
#     if yield(x) > result
#       result = yield(x)
#       real_result = x
#     else
#       puts "Test"
#     end
#     puts "This is the result #{result}"
#   end
#   p real_result
# end


# # max_by([1, 5, 3]) { |value| value + 2 }
# # max_by([1, 5, 3]) { |value| 9 - value }
# max_by([-7]) { |value| value * 3 }


# def each_cons(arr, num)
#   counter = 0
#   arr.each do |x|
#     if num == 1
#       yield(x)
#     elsif num > 2
#       yield(arr[counter], arr[counter+ 1] )
#     end
    
#   end
# end

# hash = {}
# # result = each_cons([1, 3, 6, 10]) do |value1, value2|
# #   hash[value1] = value2
# # end

# # each_cons([]) do |value1, value2|
# #   hash[value1] = value2
# # end

# # each_cons(['a', 'b']) do |value1, value2|
# #   hash[value1] = value2
# # end

# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash

# each_cons([1, 3, 6, 10], 2) do |value1, value2|
#   hash[value1] = value2
# end
# p hash

# assert_equal(true, value.odd?)

# assert_equal("XYZ", value.downcase)

# assert_nil(value)

# assert_empty(list)

# assert_includes(list, 'xyz')

# assert_raises(No ExperienceError) do
#   employee.hire
# end

# assert_instance_of(Numeric, value)

# assert_kind_of(Numeric, value)

# assert_same(list, list.process)

# refute_includes(list, 'xyz')

# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     if block_given?
#       record(yield)
#     end
#   end

#   def play
#     puts @recordings
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play

# class TextAnalyzer
#   def process
#     text = "Hi awd awf adawdada
#     dawdawdawdn dwa d
#     dawdawdawdnw
#     wr2
#     Dave"
#     yield(text)
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "#{file.split(" ").size}  words" }
# analyzer.process { |file| puts "#{file.split("\n").size}  lines" }

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Let's start gathering food."
# end

# gather(items) {|x| puts "#{x.join(', ')}"}


# def find_birds(arr)
#   yield(arr)
# end

# birds = %w(raven finch hawk eagle)

# find_birds(birds) {|first, second, *third| puts third}

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# #1
# gather(items) do |*first, last|
#   puts first.join(", ")
#   puts last
# end

# # 2
# gather(items) do |apple, *two , last|
#   puts apple
#   puts two.join(", ")
#   puts last
# end

# #3
# gather(items) do |first, *last|
#   puts first
#   puts last.join(", ")
# end

# #4
# gather(items) do |one, two , three , four |
#   puts "#{one}, #{two}, #{three}, and #{four}"
# end

# class Dog
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end

# class Test
#   attr_writer :dog
#   attr_reader :dog

#   def create_dog
#     @dog = Dog.new("Bud")
#   end

#   def change_name_of_dog(name)
#     dog.name = name
#   end

#   def puts_dog
#     dog
#   end
  
# end

# exam = Test.new
# exam.create_dog
# #p exam.dog.name
# p exam.change_name_of_dog("Charlie")
# exam.dog = 10
# p exam.puts_dog

# class Person
  

#   def initialize(age)
#     @age = age
#   end

#   def <=>(other_person)
#     age <=> other_person.age
#   end

#   def increase
#     @age += 25
#   end

#   protected

#   attr_reader :age
# end

# joe = Person.new(20)
# jack = Person.new(25)
# joe.increase
# p joe <=> jack

# class Pet
#   attr_reader :name
#   attr_accessor :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   protected


# end

# class Person
#   attr_reader :pet

#   def initialize(age)
#     @age = age
#   end
#   def add_pet(name)
#     @pet = Pet.new(name, 10)
#   end

#   @@test = 10

#   def self.get_test
#     @@test
#   end

#   def increase_pet_age(input)
#     pet.age += input
#     pet.age
#   end
  
#   def get_test
#     @@test += 1
#   end

#   def get_pet_name
#     @pet.name
#   end

#   def self.age
#     @age
#   end

#   private

#   def self.get
#     @@test = 50
#     @@test
#   end  
# end

# joe = Person.new(50)
# joe.add_pet("Bird")
# p Person.age

# puts "Top level"
# puts "self is #{self}"

# class C
#   puts "Class definition block:"
#   puts "self is #{self}"

#   def self.x
#     puts "Class method C.x:"
#     puts "self is #{self}"    
#   end

#   def m
#     puts "Instance method C.m:"
#     puts "self is #{self}"
#   end
# end

# x = C.new
# C::x
# x.m

# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def >(other_person)
#     age > other_person.age
#   end
# end

# class Team
#   attr_accessor :name, :members
#   def initialize(name)
#     @name = name
#     @members = []
#   end

#   def <<(person)
#     members.push person
#   end

#   def +(other_team)
#     temp_team = Team.new("Temporary Team")
#     temp_team.members = members + other_team.members
#     temp_team
#   end

#   def [](idx)
#     members[idx]
#   end

#   def []=(idx, obj)
#     members[idx] = obj
#   end
# end

# cowboys = Team.new("Dallas Cowboys")
# cowboys << Person.new("Troy Aikman", 48)
# cowboys << Person.new("Emmitt Smith", 46)
# cowboys << Person.new("Michael Irvin", 49)


# niners = Team.new("San Francisco 49ers")
# niners << Person.new("Joe Montana", 59)
# niners << Person.new("Jerry Rice", 52)
# niners << Person.new("Deion Sanders", 47)

# dream_team = cowboys + niners
# dream_team.name = "Dream Team"

# p dream_team.[](5)
# dream_team[5] = Person.new("JJ", 72)
# array = [1, 2, 3, 4, 5]

# def select(arr)
#   result = []
#   arr.each do |x|
#     result << x if yield(x)
#   end
#   p result
# end



# select(array) { |num| num.odd? }
# select(array) { |num| puts num } 
# select(array) { |num| num + 1 }  

# reduce
# array = [1, 2, 3, 4, 5]

# def reduce(arr, start_p=0)
#   result = start_p
#   arr.each do |x|
#     result += yield(0, x)
#   end
#   p result
# end



# reduce(array) { |acc, num| acc + num if num.odd? } 


# array = [1, 2, 3, 4, 5]

# def map(arr)
#   result = []
#   arr.each do |x|
#     result << yield(x)
#   end
#   p result
# end


# map(array) { |num| puts "hi"} 


# class Animal
#   def initialize(size, color)
#     @size = size
#     @color = color
#   end  
# end

# class Dog < Animal
#   def initialize(name, age)
#     super(nil, name)
#     @name = name
#     @age = age
#   end
# end

# bud = Dog.new("Bud", 10)
# p bud

# module Write
#   def write
#     "I can now also write!"
#   end
# end

# module Writev2
#   def write
#     "This is the method in in Writev2"
#   end
# end

# class Person
#   def speak
#     @age = 25
#     puts "Hi"
#   end
# end

# class Student < Person
#   include Write
#   include Writev2
#   def get_age
#     @age
#   end
# end

# joe = Student.new
# p joe.write
# p Student.ancestors
# ```ruby```ruby```ruby```ruby
# ```ruby[Student, Writev2, Write, Person, Object, Kernel, BasicObject]

# class Person
#   attr_accessor :name

#   def initialize(n)
#     @name = n
#   end

#   def change_info(new_name)
#     self.name = new_name         # invoking the setter method
#   end
# end

# bob = Person.new('bob')
# bob.change_info('Robert')

# puts bob.name

# class Person
#   @@number_of_people = 0
#   attr_accessor :name, :weight, :height

#   def initialize(name, weight, height)
#     @name = name
#     @weight = weight
#     @height = height
#     @@number_of_people += 1
#   end

#   def change_info(name, weight, height)
#     self.name = name
#     self.height = height
#     self.weight = weight    
#   end

#   def self.total_people
#     @@number_of_people
#   end
# end

# bob = Person.new('bob', 185, 70)
# bob.change_info("joe", 200, 500)
# p bob


# empployee (name, seriel number, typeofjob)
# exe, manae (all full time)
# regular (also full times)
# full time (mana, exe, reg)
# exe (20 day vacation, 14 da vac, reg 10)
# desk (exe corern, man private, reg cubcile, par time open workspace)
# prefix (exe to executive and mgr to maagers)
# managers and exc can delegate work (module)

# module Delegate
#   def delegate_work    
#   end
# end

# class Employee
#   def initialize(name, serial_number)
#     @name = name
#     @serial_number = serial_number
#   end
# end

# class Executive < Employee
#   include Delegate

#   def initialize(name, serial_number)
#     super(name, serial_number)
#     @type_of_emploment = "Full-time"
#     @vacation_days = 20
#     @desk = "Corner-office"
#    end 

#   def to_s
#     "Exe #{@name}"
#   end
# end

# class Manager < Employee
#   include Delegate
#   def initialize(name, serial_number)
#     super(name, serial_number)
#     @type_of_emploment = "Full-time"
#     @vacation_days = 14
#     @desk = "private-office"
#    end 

#   def to_s
#     "Mgr #{@name}"
#   end
# end

# class Regular_Employee < Employee
#   def initialize(name, serial_number)
#     super(name, serial_number)
#     @type_of_emploment = "Full-time"
#     @vacation_days = 10
#     @desk = "Cubicle"
#    end 
# end

# class PartTime < Employee
#   def initialize(name, serial_number)
#     super(name, serial_number)
#     @type_of_emploment = "Part-time"
#     @vacation_days = 0
#     @desk = "open_workspace"
#    end
# end

# joe = Regular_Employee.new("Joe", 7907)
# p joe

# def compare(string)
#   p yield(string)
# end

# compare('hi') { |word, test| word.upcase }

# def method(arr)

# end

# array = [1, 2, 3, 4, 5]

# def select(arr)
#   result = []
#   arr.each do |x|
#     result << x if yield(x)
#   end
#   p result
# end



# select(array) { |num| num.odd? }

# array = [1, 2, 3, 4]

# def test_size
#   assert_equal(4, array.size)
# end

# class Person
#   def speak
#     @age = 25
#     puts "Hi"
#   end
# end

# class Student < Person
#   def get_age
#     @age
#   end
# end
# joe = Student.new
# joe.speak

# p joe.get_age
# p joe
