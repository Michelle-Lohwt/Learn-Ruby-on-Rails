# Output methods

#--------------------------------------------------------------+
# print - do not skip to next line after the string is printed
# puts - print out the string without ""
# p - print out the string with ""
#--------------------------------------------------------------+

print "1. Hello World\n"
puts "2. Hello World"
p "3. Hello World"

greeting = "4. Hello Today"
puts greeting

# >> 1. Hello World
# >> 2. Hello World
# >> "3. Hello World"
# >> 4. Hello Today



#--------------------------------------------------------------+
# functions
# the syntax starts with "def" and end with "end"
# Beware of indentation problem
#--------------------------------------------------------------+

def say_hello
    puts "5. Hello World"
end
say_hello

# >> 5. Hello World


#--------------------------------------------------------------+
# function with arguments
# no need to have paranthesis()
#--------------------------------------------------------------+

def say_hello(speech)
    puts speech
end
say_hello "6. Hello how are you?"

# >> 6. Hello how are you?