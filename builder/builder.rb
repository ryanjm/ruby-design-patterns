require 'json'

class Person
  attr_accessor :name, :age, :job, :builder

  def build
    builder.setTitle("Person")
    builder.setAttribute("name", @name)
    builder.setAttribute("age", @age)
    builder.setAttribute("job", @job)
  end
end

class PersonBuilder
  def initialize
    @attr = {}
  end

  def setTitle(title)
    raise "setTitle not implimented by subclass"
  end

  def setAttribute(name, value)
    raise "setAttribute not implimented by subclass"
  end
end

class PersonJSONBuilder < PersonBuilder
  def setTitle(title)
    @title = title
  end

  def setAttribute(name, value)
    @attr[name] = value
  end

  def getJSON
    { @title => @attr }.to_json
  end
end

class PersonTextBuilder < PersonBuilder
  def setTitle(title)
    @title = title
  end

  def setAttribute(name, value)
    @attr[name] = value
  end

  def getText
    text = @title
    @attr.each do |key, value|
      text += "\n#{key} is #{value}"
    end
    text
  end
end

p = Person.new
p.name = "Bob"
p.age = 35
p.job = "Developer"

b1 = PersonJSONBuilder.new
p.builder = b1
p.build
puts b1.getJSON

b2 = PersonTextBuilder.new
p.builder = b2
p.build
puts b2.getText∂
