require 'observer'

class Person
  include Observable
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def add_friend(friend)
    friend.add_observer(self)
  end

  # required for observer
  def update(friend)
    puts "Happy #{friend.age} birthday #{friend.name}! -#{self.name}"
  end

  def age=(new_age)
    changed
    @age = new_age
    notify_observers(self)
  end
end

# Create people
abc = Person.new("Abc", 26)
foo= Person.new("Foo", 34)
bar = Person.new("Bar", 40)

# Make friends
foo.add_friend(abc)
bar.add_friend(abc)

abc.add_friend(bar)

abc.age = 27
bar.age = 41
