# Basic operations
puts 1 + 2      # 3
puts 2 - 1      # 1
puts 5 * 2      # 10
puts 10 / 4     # 2
puts 10.0 / 4   # 2.5
puts 10 / 4.0   # 2.5
puts 10 / 4.to_f    # 2.5
puts (10 / 4).to_f  # 2.0
puts 10 % 4     # 2

# Assign variables
x = 5
y = 10
puts y/x    # 2

# Numbers vs String Concatenation
# puts "5" * "5"    // no implicit conversion of String into Integer (TypeError)
puts "5" * 2        # 55
# puts 2 * "5"      // String can't be coerced into Integer (TypeError)
puts "-" * 20       # --------------------

# Using methods
20.times{print "-"}    # --------------------
puts
20.times{print rand(10).to_s + " "} # (20 random numbers between 0 to 9)
puts
puts rand              # 0.4103697948838626
puts rand(100)         # 74 (random number between 0 to 99)

# String to numbers
x = "5".to_i
puts x          # 5
puts x.to_f     # 5.0

# Numbers to string
puts "hello".to_i   # 0
puts "hello".to_f   # 0.0

# Simple calculator
puts "\nSimple calculator"
25.times{print "-"}
print "\nEnter first number: "
num_1 = gets.chomp
print "Enter second number: "
num_2 = gets.chomp.to_f
puts "Multiplying...: #{num_1.to_i * num_2}"

# Methods
puts 22.odd?    # false
puts 22.even?   # true

# Comparisons
a = 'a'
b = 'b'
puts a == b # false
puts 1 == 2 # false
puts 3 == 3 # true
puts 5 < 2  # false
puts 2 <= 5 # true
puts 5 > 2  # true

# && vs and
## (&& has higher precedence than and)
## screening left to right
puts 5 && 6     # 6
puts 6 && 5     # 5
puts 5 and 6    # 5
puts 6 and 5    # 6
puts true && false  # false
puts false && true  # false
puts true and false # true
puts false and true # false

# || vs or
## (|| has higher precedence than or)
## screening left to right
puts 6 || 5 # 6
puts 5 || 6 # 5
puts 6 or 5 # 6
puts 5 or 6 # 5
puts false || true # true
puts true || false # true
puts false or true # false
puts true or false # true

# Homework Solution: Working with numbers - Analyzer
puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted from the second number is: #{second_number.to_f - first_number.to_f}"
puts "The first number added to the second number is: #{second_number.to_f + first_number.to_f}"
puts "The first number mod the second number is: #{first_number.to_f % second_number.to_f}"