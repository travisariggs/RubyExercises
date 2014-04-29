class Person

  #attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def something
    self.name = 'lakjwe'
  end

  def name=(str)
    @name = str.capitalize
  end

  def name
    @name
  end

end

a = Person.new('travis')

puts a.name

a.something

puts a.name

a.name = 'bob'

puts a.name
