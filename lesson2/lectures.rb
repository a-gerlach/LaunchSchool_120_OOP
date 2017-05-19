# class Person
#   attr_accessor :last_name, :first_name


#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   def to_s
#     name
#   end

#   def compare_name(other_name)
#     p (self.first_name == other_name.first_name) && (self.last_name == other_name.last_name)
    
#   end
#   private

#   def parse_full_name(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ""
#   end

# end

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}"

# LECTURE: INHERITANCE

# class Pet
#   def run
#     'running!'
#   end

#   def jump
#     'jumping!'
#   end
# end

# class Dog < Pet
#   def speak
#     'bark!'
#   end

#   def fetch
#     'fetching!'
#   end

#   def swim
#     'swimming!'
#   end
# end

# class Cat < Pet
#   def speak
#     'meow!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "Cant swim!"
#   end
# end


# pete = Pet.new
# kitty = Cat.new
# dave = Dog.new
# bud = Bulldog.new

# p pete.run
# # p pete.speak

# p kitty.run
# p kitty.speak
# #p kitty.fetch

# p dave.speak

# p bud.run
# p bud.ancestors

# p Bulldog.ancestors


# # Create a new class called Cat, 
# #which can do everything a dog can, except swim or fetch. 

# class Bulldog < Dog
#   def swim
#     "Cant swim!"
#   end
# end

# teddy = Dog.new
# puts teddy.speak
# puts teddy.swim

# sparky = Bulldog.new
# puts sparky.swim
# puts sparky.speak






# One problem is that we need to keep track of different breeds of dogs, 
# since they have slightly different behaviors. For example, 
# bulldogs can't swim, but all other dogs can.

# Create a sub-class from Dog 
# called Bulldog overriding the swim method to return "can't swim!"

class Test
  a = "hi"
  def self.put_out(input)
    puts input
  end
end
puts a # cannot be called
Test.put_out(a)