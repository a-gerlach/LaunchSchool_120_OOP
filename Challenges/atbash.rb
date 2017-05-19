class Atbash
  ATBASH_HASH = {
    "a" => "z",
    "b" => "y",
    "c" => "x",
    "d" => "w",
    "e" => "v",
    "f" => "u",
    "g" => "t",
    "h" => "s",
    "i" => "r",
    "j" => "q",
    "k" => "p",
    "l" => "o",
    "m" => "n"
  }

  def self.encode(encoded_string)
    apply_cipher(transform_input(encoded_string))
  end

  def self.transform_input(code)
    code.gsub(/[^0-9a-zA-Z]/, "").downcase.chars
  end

  def self.apply_cipher(input)
    decoded_array = []
    counter = 0
    input.each do |x|
      if ATBASH_HASH.key?(x)
        decoded_array << ATBASH_HASH[x]
      elsif ATBASH_HASH.values.include?(x)
        decoded_array << ATBASH_HASH.key(x)
      else
        decoded_array << x
      end
      counter += 1
      if (counter % 5).zero? then decoded_array << " " end
    end
    if decoded_array[-1] == " " then decoded_array.delete_at(-1) end
    decoded_array.join
  end
end

# Try to solve with map

class Atbash
  ATBASH_HASH = {
    "a" => "z",
    "b" => "y",
    "c" => "x",
    "d" => "w",
    "e" => "v",
    "f" => "u",
    "g" => "t",
    "h" => "s",
    "i" => "r",
    "j" => "q",
    "k" => "p",
    "l" => "o",
    "m" => "n"
  }

  def self.encode(encoded_string)
    apply_cipher(transform_input(encoded_string))
  end

  def self.transform_input(code)
    code.gsub(/[^0-9a-zA-Z]/, "").downcase.chars
  end

  def self.apply_cipher(input)
    input
    counter = 0
    input.map! do |x|
      if ATBASH_HASH.key?(x)
        ATBASH_HASH[x]
      elsif ATBASH_HASH.values.include?(x)
        ATBASH_HASH.key(x)
      else
        x
      end      
    end
    add_whitespaces(input)
  end

  def self.add_whitespaces(input)
    counter = 0
    input.map! do |x|
      counter += 1
      if counter % 5 == 0
        "#{x}" + " "
      else
        x
      end  
    end
    if input[-1] == " " then input.delete_at(-1) end
    p input[-1]
    p input.join
  end
end

plaintext = 'The quick brown fox jumps over the lazy dog.'
    cipher = 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
Atbash.encode(plaintext)

# Limitation of single inheritance and assignment in 120 that deal with that problem.
# go through the course again and pay attention to where
# we talk about the use of modules and single inheritance

From: http://stackoverflow.com/questions/38155304/what-criteria-justifies-using-a-module-over-a-class-in-ruby
Some programming languages such as C++, Perl, and Python allow one class to inherit from multiple other classes; that is called multiple inheritance. Ruby does not support multiple inheritance. That means each class can only inherit from one other class. However, there are cases where a class would benefit by acquiring methods defined within multiple other classes. That is made possible by using a construct called module.

A module is somewhat similar to a class, except it does not support inheritance, nor instantiating. It is mostly used as a container for storing multiple methods. One way to use a module is to employ an include or extend statement within a class. That way, the class gains access to all methods and objects defined within the module. It is said that the module is mixed in the class. So, a mixin is just a module included in a class. A single module can be mixed in multiple classes, and a single class can mix in multiple modules; thus, any limitations imposed by Ruby's single inheritance model are eliminated by the mixin feature.

Modules can also be used for namespacing. That is explained in this post at the Practicing Ruby website

Sometimes we have a class design where we want to include a method
in a many different class, but not its superclass. For that we use
the module