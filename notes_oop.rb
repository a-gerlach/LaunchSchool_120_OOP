- Encapsulation is hiding pieces of functionality and making it unavailable to the rest of the code base. 
  It is a form of data protection, so that data cannot be manipulated or changed without obvious intention. 
  It is what defines the boundaries in your application and allows your code to achieve new levels of complexity. 
  Ruby, like many other OO languages, accomplishes this task by creating objects, 
  and exposing interfaces (i.e., methods) to interact with those objects.

- Polymorphism is the ability for data to be represented as many different types. 
  "Poly" stands for "many" and "morph" stands for "forms". OOP gives us flexibility in using pre-written code for new purposes.

- The concept of inheritance is used in Ruby where a class inherits the behaviors of another class, referred to as the superclass. 
  This gives Ruby programmers the power to define basic classes with large reusability and smaller subclasses 
  for more fine-grained, detailed behaviors.

- By convention, class names start with a capital letter and use CamelCase

- In the above example, we created an instance of our GoodDog class and stored it in the variable sparky. We now have an object. 
  We say that sparky is an object or instance of class GoodDog. 
  This entire workflow of creating a new object or instance from a class is called instantiation, 
  so we can also say that we have instantiated an object called sparky from the class GoodDog.
    class GoodDog
    end

    sparky = GoodDog.new

- As we mentioned earlier, modules are another way to achieve polymorphism in Ruby. 
  A module is a collection of behaviors that is useable in other classes via mixins. 
  A module is "mixed in" to a class using the include reserved word.

- We can use the ancestors method on any class to find out the method lookup chain.

- A module allows us to group reusable code into one place. 
  We use modules in our classes by using the include reserved word, followed by the module name. 
  Modules are also used as a namespace:
    module Study
    end

    class MyClass
      include Study
    end

    my_obj = MyClass.new

- Instance variables keep track of state, and instance methods expose behavior for objects. 
  Lets take a closer look at how to define them in a class.

- The initialize method gets called every time you create a new object. 
  That's odd, don't we call the new method when we create an object? 
  Yes, calling the new class method eventually leads us to the initialize instance method.
  We refer to the initialize method as a constructor, 
  because it gets triggered whenever we create a new object.

- The @name variable looks different because it has the @ symbol in front of it. 
  This is called an instance variable. 
  It is a variable that exists as long as the object instance exists and it is one of the ways we tie data to objects. 
  It does not "die" after the initialize method is run. It "lives on", to be referenced, until the object instance is destroyed. 
  In the above example, our initialize method takes a parameter called name. 
  You can pass arguments into the initialize method through the new method. 
  Lets create an object using the GoodDog class from above:
    class GoodDog
      def initialize(name)
        @name = name
      end
    end

    sparky = GoodDog.new("Sparky")

- Here(above), the string "Sparky" is being passed from the new method through to the initialize method, 
  and is assigned to the local variable name. Within the constructor (i.e., the initialize method), 
  we then set the instance variable @name to name, 
  which results in assigning the string "Sparky" to the @name instance variable.

- Within a class, we have access to instance variables (@).

- With attr_accessor methods, we can save two functions.
  attr_accessor :name is equal to:
     def name # a method for getten the name
       @name
     end

     def name=(n) # a method for setting the name.
       
     end

- The attr_reader method only allows you to retrive the instance variable. This is called a "getter" method.

- With attr_writer we only get the setter method. 

-  All of the attr_* methods take a Symbol as parameters; 
  if there are more variables you are tracking, you can use this syntax:
    attr_accessor :name, :height, :weight

- Wherever we are changing the instance variable directly in our class, 
  we should instead use the setter and getter method. 

- To disambiguate from creating a local variable, 
  we need to use self.name= to let Ruby know that we are calling a method

- by default the to_s method prints the object’s class and an encoding of the object id.
  Example:
    puts sparky      # => #<GoodDog:0x007fe542323320>

- when we simply call "p" on sparky, then this is the result:
    p sparky         # => #<GoodDog:0x007fe54229b358 @name="Sparky", @age=28>

- Besides being called automatically when using puts, 
  another important attribute of the to_s method is that its also automatically called in string interpolation

- from within the class, when an instance method calls self, it is returning the calling object, so in this case, 
  its the sparky object. Therefore, from within the change_info method, calling self.name= is the same as calling sparky.name= . 

- So you can see that self, inside a class but outside an instance method, is actually referring to the class itself. 
  Therefore, a method definition prefixed with self is the same as defining the method on the class. 
  That is, def self.a_method is equivalent to def GoodDog.a_method. (GoodDog is a class)
  That's why it's a class method; its actually being defined on the class.

- So just to be clear, from within a class...

    1. self, inside of an instance method, references the instance (object) that called the method - the calling object. 
      Therefore, self.weight= is the same as sparky.weight=, in our example. (sparky is an instance)

    2. self, outside of an instance method (but in a class), references the class and can be used to define class methods. 
      Therefore, def self.name=(n) is the same as def GoodDog.name=(n), in our example.

- self changes depending on the scope it's defined in, so pay attention to see if you're inside an instance method or not. 

- In the previous chapter we talked briefly about inheritance. Inheritance is when a class inherits behavior from another class. 
  The class that is inheriting behavior is called the subclass and the class it inherits from is called the superclass.

- We use the < symbol to signify that the GoodDog class is inheriting from the Animal class. 
  This means that all of the methods in the Animal class are available to the GoodDog class for use. 
  We also created a new class called Cat that inherits from Animal as well. 
  We have eliminated the speak method from the GoodDog class in order to use the speak method from Animal.

- Ruby provides us with a built-in function called super that allows us to call methods up the inheritance hierarchy. 
  When you call super from within a method, 
  it will search the inheritance hierarchy for a method by the same name and then invoke it.

- Note: A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling. 
  You can see this convention with our Swimmable module. 
  Likewise, we could name a module that describes "walking" as Walkable.

- Inheritance vs Modules

  Now that you know the two primary ways that Ruby implements inheritance, class inheritance and mixing in modules, 
  you may wonder when to use one vs the other. Here are a couple of things to remember when evaluating those two choices.

  1. You can only subclass from one class. But you can mix in as many modules as you'd like.

  2. If it's an "is-a" relationship, choose class inheritance. If its a "has-a" relationship, choose modules. 
     Example: a dog "is an" animal; a dog "has an" ability to swim.
    
  3. You cannot instantiate modules (i.e., no object can be created from a module) Modules are used only for namespacing 
     and grouping common methods together.

- First, this tells us that the order in which we include modules is important. 
  Ruby actually looks at the last module we included first. 
  This means that in the rare occurrence that the modules we mix in contain a method with the same name, 
  the last module included will be consulted first. 

- The second interesting thing is that the module included in the superclass made it on to the method lookup path. 

- The first use case we'll discuss is using modules for namespacing. 
  In this context, namespacing means organizing similar classes under a module. 
  In other words, we'll use modules to group related classes. Therein lies the first advantage of using modules for namespacing. 
  It becomes easy for us to recognize related classes in our code. The second advantage is it reduces 
  the likelihood of our classes colliding with other similarly named classes in our codebase. Here is how we do it:
    module Mammal
      class Dog
        def speak(sound)
          p "#{sound}"
        end
      end

      class Cat
        def say_name(name)
          p "#{name}"
        end
      end
    end

    buddy = Mammal::Dog.new
    kitty = Mammal::Cat.new
    buddy.speak('Arf!')           # => "Arf!"
    kitty.say_name('kitty')       # => "kitty"

- The second use case for modules we'll look at is using modules as a container for methods, called module methods. 
  This involves using modules to house other methods. 
  This is very useful for methods that seem out of place within your code. Let's use our Mammal module to demonstrate:
    module Mammal
      ...

      def self.some_out_of_place_method(num)
        num ** 2
      end
    end

    value = Mammal.some_out_of_place_method(4) # 16

- A public method is a method that is available to anyone who knows either the class name or the objects name. 
  These methods are readily available for the rest of the program 
  to use and comprise the class's interface (that's how other classes and objects will interact with this class and its objects).

- Sometimes you'll have methods that are doing work in the class but don't need to be available to the rest of the program. 
  These methods can be defined as private. 
  How do we define private methods? We use the reserved word private in our program and anything below it is private

- private methods are only accessible from other methods in the class.

- In summary, private methods are not accessible outside of the class definition at all, 
  and are only accessible from inside the class when called without self.

- Public and private methods are most common, but in some less common situations, we want an in-between approach. 
  We can use the protected keyword to create protected methods. The easiest way to understand protected methods 
  is to follow these two rules:

    1. from outside the class, protected methods act just like private methods.

    2. from inside the class, protected methods are accessible just like public methods.

- Overall, it’s important to familiarize yourself with some of the common Object methods 
  and make sure to not accidentally override them as this can have devastating consequences for your application.
  If you create a method in a class that is the same like a method is a superclass, then you override that
  method from the superclass, because only the method in your local class will be called. This is because of the 
  method lookup path. Be mindfull of this. 


- We can create an object without calling the constructor (initialize). Ruby has a special allocate method for this. 
  The allocate method allocates space for a new object of a class and does not call initialize on the new instance. 
  Example:
    jack = Person.allocate # this does not call the initialize method on creation of the Object

- Private methods are tightest methods in Ruby. They can be called only inside a class definition and without the self keyword. 
  Private methods cannot be specified with a receiver

- Finally, we will work with protected methods. The distinction between protected and private methods in Ruby is subtle. 
  Protected methods are like private. There is only one small difference. 
  They can be called with the self keyword specified. 

- Example of inheritance from a constructor method:
  class A
    def initialize
      @a = "foo"
    end
  end

  class B < A
    def to_s
      @a
    end
  end

  puts B.new
  # "foo" is printed


- What is the method lookup path and how is it important?:
  The method lookup path is the order in which Ruby will traverse the class hierarchy to look for methods to invoke. 
  For example, say you have a Bulldog object called bud and you call: bud.swim. Ruby will first look for a method called swim in 
  the Bulldog class, 
  then traverse up the chain of super-classes; it will invoke the first method called swim and stop its traversal.


- Instance variables can be set to any object, even an object of a custom class we have created. 
  They can be set to Arrays, hashaes and even other objects.

- The classical approach to object oriented programming is:

    1. Write a textual description of the problem or exercise.
    2. Extract the major nouns and verbs from the description.
    3. Organize and associate the verbs with the nouns.
    4. The nouns are the classes and the verbs are the behaviors or methods.

- a state means an instance variable 

- we can access the method in other values if we have access to theirs Objects / Instances

- Short Circuiting: the && and || operators exhibit a behavior called short circuiting, 
  which means it will stop evaluating expressions once it can guarantee the return value.

- the equal? method checks to see if the two objects are the same.
  It returns true if the two object reference the same object, or space in memory.

- The "==" method only compares the value of two objects.

- In summary, the == method compares the two variables values whereas 
  the equal? method determines whether the two variables point to the same object.

- The answer is that == is not an operator in Ruby, like the = assignment operator. 
  Instead, its actually an instance method available on all objects.

- Since its an instance method, the answer to how does == know what value to use for comparison is: its determined by the class.

- arr1 = [1, 2, 3]
  arr2 = [1, 2, 3]
  arr1.object_id == arr2.object_id      # => false

  sym1 = :something
  sym2 = :something
  sym1.object_id == sym2.object_id      # => true

  int1 = 5
  int2 = 5
  int1.object_id == int2.object_id      # => true

  Interesting! This means that symbols and integers behave slightly differently in Ruby than other objects. 
  If two symbols or two integers have the same value, they are also the same object. 
  This is a performance optimization in Ruby, because you can't modify a symbol or integer. 
  This is also why Rubyists prefer symbols over strings to act as hash keys: it's a slight performance optimization and saves on memory.

- ==

    - the == operator compares two objects values, and is frequently used.
    - the == operator is actually a method. Most built-in Ruby classes, like Array, String, Fixnum, 
      etc override the == method to specify how to compare objects of those classes.
    - if you need to compare custom objects, you should override the == method.
    - understanding how this method works is the most important part of this assignment.

- If you try to reference an uninitialized local variable, you get a NameError. 
  But if you try to reference an uninitialized instance variable, you get nil.

- Instance Variable Scope

  Instance variables are variables that start with @ and are scoped at the object level. 
  They are used to track individual object state, and do not cross over between objects

- Class Variable Scope

  Class variables start with @@ and are scoped at the class level. They exhibit two main behaviors:

  - all objects share 1 copy of the class variable. (This also implies objects can access class variables by way of instance methods.)
  - class methods can access class variables, regardless of where its initialized.

- Constant Variable Scope

  Constant variables are usually just called constants, because you are not supposed to re-assign them to a different value. 
  If you do re-assign a constant, Ruby will warn you (but wont generate an error). Constants begin with a capital letter and have lexical scope. 

  the rule for accessing constants is pretty easy: its available in class methods or instance methods (which implies its accessible from objects). 
  Where constant resolution gets really tricky is when inheritance is involved, and that is when we need to remember that unlike other variables, 
  constants have lexical scope.

- uninitialized instance variables return nil

- From the examples above, instance variables dont really exhibit any surprising behavior. They behave very similar to how instance methods would, 
  with the exception that we must first call the method that initializes the instance variable, and then sub-classes can access it.

- we can initialize class vars without using any method. We can just initialize them in their class. They are loaded with their class. 
  The same is not true for instance variables. Instance variables should be initialized in a method. This method does not have to be
  the initialize method. It can be any method.

- But there is a potentially huge problem. It can be dangerous when working with class variables 
  within the context of inheritance, because there is only one copy of the class variable across all sub-classes
  For this reason, avoid using class variables when working with inheritance. 
  In fact, some Rubyists would go as far as recommending avoiding class variables altogether. 

- But unlike class or instance variables, we can actually reach into the Dog class and reference the LEGS constant. 
  In order to do so, we have to tell Ruby where the LEGS constant is using ::, which is the namespace resolution operator.
  Example: 
    class Dog
      LEGS = 4
    end

    class Cat
      def legs
        Dog::LEGS                               # added the :: namespace resolution operator
      end
    end

    kitty = Cat.new
    kitty.legs                                  # => 4

- Constant resolution will look at the lexical scope first, and then look at the inheritance hierarchy. 
  It can get very tricky when there are nested modules, each setting the same constants to different values. 
  Be mindful that constant resolution rules are different from method lookup path or instance variables.

- Summary

    - Instance Variables behave the way we would expect. The only thing to watch out for is to make sure the instance variable 
      is initialized before referencing it.

    - Class Variables have a very insidious behavior of allowing sub-classes to override super-class class variables. 
      Further, the change will affect all other sub-classes of the super-class. This is extremely unintuitive behavior, 
      forcing some Rubyists to eschew using class variables altogether.

    - Constants have lexical scope which makes their scope resolution rules very unique compared to other variable types. 
      If Ruby doesnt find the constant using lexical scope, it will then look at the inheritance hierarchy.


- We can check for instance variables like this:
  object/instance.instance_variables

- We are able to access instance variables directly from the object 
  by calling instance_variable_get on the instance. 
  This would return something like this:

    big_cube = Cube.new(5000)
    big_cube.instance_variable_get("@volume")
    => 5000


- Benefits of OOP
  
  - Creating objects allows programmers to think more abstractly about the code they are writing.
  - Objects are represented by nouns so are easier to conceptualize.
  - It allows us to only expose functionality to the parts of code that need it, meaning namespace issues are much harder to come across.
  - It allows us to easily give functionality to different parts of an application without duplication.
  - We can build applications faster as we can reuse pre-written code.
  - As the software becomes more complex this complexity can be more easily managed. 

- the general rule from the Ruby style guide is 
  to "Avoid self where not required."

- When you invoke super within a method, ruby looks in the inheritance hierarchy for a method with the same name. 
  Invoking super without any parentheses means all arguments are passed to initialize in Vehicle.

    class Vehicle
      attr_reader :year

      def initialize(year)
        @year = year
      end
    end

    class Truck < Vehicle
      def initialize(year)
        super # the year var is passed into initialize in Vehicle
        start_engine
      end

      def start_engine
        'Ready to go!'
      end
    end

    truck1 = Truck.new(1994)
    puts truck1.year

- When a method is private, only the class - not instances of the class - can access it. However, when a method is protected, 
  all instances of the class have access to it. This means we can 
  easily share sensitive data between instances of the same class type.

- Making objects comparable is actually quite easy; you do not have to create every possible comparison operator for the object.
  Instead, all you need to do is include the Comparable mixin, and define one method: <=>. 
  The <=> method should return 0 if the two objects are "equal", 1 if the receiving object is greater than the other object, 
  and -1 if the receiving object is less that the other object. 
  Often you can get by just using the <=> operator from one or more of your class's instance objects like we do here. '

- class methods do not have access to instance variables. 

- Objects are created from classes. Think of classes as molds 
  and objects as the things you produce out of those molds. 

- When defining a class, we typically focus on two things: 
  states and behaviors. States track attributes for individual objects. Behaviors are what objects are capable of doing.

- Remember that uninitialized instance variables return nil

- Ruby’s policy is that it’s okay to use an explicit receiver for private setter methods, but
  you have to thread the needle by making sure the receiver is exactly self. This is only true for setter methods. 
  Otherwise private methods cannot be called with an explicit receiver, meaning it only makes sense to call them inside classes
  where the receiver is either a class or an instance of the class.

- Baker Example: You tell a baker you want a cake. That is a public method. But all the things the baker does for preparation are private
  methods which you cannot access.

- A protected method is thus like a private method, but with an exemption for cases
  where the class of self (c1) and the class of the object having the method called on it
  (c2) are the same or related by inheritance.