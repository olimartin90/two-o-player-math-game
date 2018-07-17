class Person
  # attr_reader :name
  # `attr_reader` generates this code
  # def name
  #   @name
  # end

  # attr_writer :name
  # `attr_writer` generates this code
  # def name=(new)
  #   @name = new
  # end

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

p = Person.new('L. Ron')
p.name = "New Name"
puts p.name
