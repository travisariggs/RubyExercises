#require 'pry'

def new_problem(number, message)

	puts
	puts "="*12
	puts "Problem #{number}"
	puts "#{message}"

end

# Problem #1
# 1. Use the "each" method of Array to iterate over 
#  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

new_problem(1, 'Use the "each" method of Array to iterate over ' +
  					'[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.')
my_array = *(1..10)

my_array.each {|v| puts "#{v}"}

# 2. Same as above, but only print out values greater than 5.
new_problem(2, "Same as above, but only print out values greater than 5.")
my_array.each {|v| puts "#{v}" if v > 5}

# 3. Now, using the same array from #2, use the "select" method 
#  to extract all odd numbers into a new array.
new_problem(3, 'Use the "select" method to extract all odd numbers ' + 
						'into a new array')
puts my_array.select { |v| v.odd? }

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
new_problem(4, "Append '11' to the end of the array. Prepend '0' to the " +
						"beginning.")
my_array.push(11)
my_array.insert(0, 0)
puts my_array

# 5. Get rid of "11". And append a "3".
new_problem(5, 'Get rid of "11". And append a "3".')
my_array.pop()
my_array.push(3)
puts my_array

# 6. Get rid of duplicates without specifically removing any one value. 
new_problem(6, 'Get rid of duplicates without specifically removing any ' + 
						'one value.')
my_array.uniq!
puts my_array

# 7. What's the major difference between an Array and a Hash?
new_problem(7, "What's the major difference between an Array and a Hash?")
puts "Arrays are like lists where order is important. Hashes are like "
puts "dictionaries that are accessed with a key.  Arrays are accessed "
puts "via indices.  Also, order is not neccessarily stable in a hash."

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
new_problem(8, 'Create a Hash using both Ruby 1.8 and 1.9 syntax.')
old_way_hash = { "Travis" => 31, "Riggs" => 17.2 }
new_way_hash = Hash[ "Travis", 31, "Riggs", 17.2 ]
puts "Ruby 1.8 hash: #{old_way_hash}"
puts "Ruby 1.9 hash: #{new_way_hash}"

# Suppose you have a h = {a:1, b:2, c:3, d:4}
h = Hash[ "a" => 1, "b" => 2, "c" => 3, "d" => 4 ]

# 9. Get the value of key "b".
new_problem(9, 'Get the value of key "b"')
puts "Value of key 'b': #{h["b"]}"

# 10. Add to this hash the key:value pair {e:5}
new_problem(10, 'Add to this hash the key:value pair {e:5}')
h["e"] = 5
puts "#{h}"

# 13. Remove all key:value pairs whose value is less than 3.5

# 14. Can hash values be arrays? Can you have an array of hashes? 
#  (give examples)

# 15. Look at several Rails/Ruby online API sources and say which one 
#  your like best and why.