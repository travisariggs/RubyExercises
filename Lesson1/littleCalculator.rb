require 'pry'

# class Array
# 	def to_s
# 		puts 'Hi Mom!'
# 	end
# end


def say(message)
	puts "=> #{message}"
end

# Get the first number from user
say 'Enter a first number:'
num1 = gets.chomp

puts "The first number is #{num1}"

say 'Enter a second number:'
num2 = gets.chomp

say "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

binding.pry

if operator == "1"
	result = num1.to_f + num2.to_f
elsif operator == "2"
	result = num1.to_f - num2.to_f
elsif operator == "3"
  result = num1.to_f * num2.to_f	
elsif operator == "4"
	result = num1.to_f / num2.to_f
else
	puts "You must select 1-4!"
end

puts "Result is #{result}"