def multiply(first, second)
    # automatically return the last line, 
    # hence no need to explicitly call "return"
    first.to_f * second.to_f    
end

def divide(first, second)
    first.to_f / second.to_f
end

def add(first, second)
    first.to_f + second.to_f
end

def subtract(first, second)
    first.to_f - second.to_f
end

def mod(first, second)
    first.to_f % second.to_f
end

puts "Simple calculator"
20.times{print "-"}
puts
puts "Enter your first number"
first = gets.chomp
puts "Enter your second number"
second = gets.chomp
puts "Mulitplication is #{multiply(first, second)}"
puts "Division is #{divide(first, second)}"
puts "Addition is #{add(first, second)}"
puts "Subtraction is #{subtract(first, second)}"
puts "Modulus is #{mod(first, second)}"