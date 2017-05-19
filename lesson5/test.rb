class Dog
  def bark
    puts bark
  end
end


class Cat
  attr_accessor :dog
  def initialize
    @dog = Dog.new
  end
  def test
    puts "test"
    dog.bark
  end
end

Cat.new.test