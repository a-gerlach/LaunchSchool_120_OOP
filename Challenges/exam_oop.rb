# Limitation of single inheritance and assignment in 120 that deal with that problem.
# go through the course again and pay attention to where
# we talk about the use of modules and single inheritance

# From: http://stackoverflow.com/questions/38155304/what-criteria-justifies-using-a-module-over-a-class-in-ruby
# Some programming languages such as C++, Perl, and Python allow one class to inherit from multiple other classes; that is called multiple inheritance. Ruby does not support multiple inheritance. That means each class can only inherit from one other class. However, there are cases where a class would benefit by acquiring methods defined within multiple other classes. That is made possible by using a construct called module.

# A module is somewhat similar to a class, except it does not support inheritance, nor instantiating. It is mostly used as a container for storing multiple methods. One way to use a module is to employ an include or extend statement within a class. That way, the class gains access to all methods and objects defined within the module. It is said that the module is mixed in the class. So, a mixin is just a module included in a class. A single module can be mixed in multiple classes, and a single class can mix in multiple modules; thus, any limitations imposed by Ruby's single inheritance model are eliminated by the mixin feature.

# Modules can also be used for namespacing. That is explained in this post at the Practicing Ruby website

# Sometimes we have a class design where we want to include a method
# in a many different class, but not its superclass. For that we use
# the module

Hi Chris,

i thought about the problem of single inheritance and I tried to illustrate
it with an example.

# In the example we have a class called Person, which is the superclass of both Student and SoftwareDeveloper. 
# Student is the superclass of FirstGrader and LaunschoolStudent, since both are types
# of students.
# We now want to include the method/behavior "programming" into our classes.
# We know that not every Person or every Student knows how to programm.
# The only classes in which we want to include this behavior are SoftwareDeveloper and LaunchSchoolStudent. 
# In order to only include the method in these classes we mix-in the module into these two classes. 
# Single class-inheritance does not allow for much flexibility when our design gets more complex, because each class is only allowed to 
# inherit from one super-class. If we want to include behavior in some classes, but not in others then 
# single class inheritance often does not allow that.
# Without modules we are either forced to violate the DRY-principle or to include behavior in classes that should not have that behavior.
# Modules allow us us to include certain behavior with high precision and gives us flexibility.

module Programming
  def programming    
  end
end

class Person
end

class SoftwareDeveloper < Person
 include Programming
end

class Student < Person
end

class FirstGrader < Student
end

class LaunchSchoolStudent < Student
  include Programming
end