class Parent
  def something(a='Hello')
    puts a
  end
end

class Child < Parent
  # alias_method :parent_method, :method
  def something
    super 'Goodbye'
  end

  # def other_method
  #   parent_method
  #   #OR
  #   Parent.instance_method(:method).bind(self).call
  # end
end

p = Parent.new

p.something

puts

c = Child.new
c.something
