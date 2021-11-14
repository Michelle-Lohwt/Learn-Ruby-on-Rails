puts "Simple calculator"
20.times{print "-"}
puts
puts "Enter your first number"
first = gets.chomp
puts "Enter your second number"
second = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"

user_entry = gets.chomp
if user_entry == "1"
    puts "You have chosen multiply"
elsif user_entry == "2"
    puts "You have chosen add"
elsif user_entry == "3"
    puts "You have chosen subtract"
else
    puts "Invalid entry"
end
