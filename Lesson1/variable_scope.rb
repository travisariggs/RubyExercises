
def nonmutate(an_array)
  puts an_array
end

def mutate(an_array)
  an_array.pop
end

my_var = [ 1, 2, "Travis" ]
copy_my_var = my_var

puts "my_var = #{my_var}"
puts "copy_my_var = #{copy_my_var}"
puts

puts "Changing the value of my_var to [4, 5, 'hello']"
my_var = [4, 5, 'hello']

puts "my_var = #{my_var}"
puts "copy_my_var = #{copy_my_var}"
puts

puts "Calling nonmutate method..."
nonmutate(my_var)

puts "my_var = #{my_var}"
puts "copy_my_var = #{copy_my_var}"
puts

puts "Calling mutate method..."
mutate(my_var)
puts

puts "my_var = #{my_var}"
puts "copy_my_var = #{copy_my_var}"
puts


    
outer_var = "Hello"

(1..3).each do |v|

  inner_var = "Goodbye"  
  puts "  #{outer_var}"
  puts "  #{inner_var}"
  puts "  #{v}"

  # Inner loop
  (1..2).each do |i|
    puts "    #{outer_var}"
    puts "    #{inner_var}"
    puts "    #{v}"
    puts "    #{i}"
  end

end

# This var is out of scope
# puts v