# This is a comment

puts "Hello World"
print "Hello World"
p "Hello World"

#           puts            |       print       |                       p
#    always return null     |   return null     |   return the object you pass in (even quotations)
#   proceed to next line    |   no next line    |   proceed to next line

greetings = "Hello World"
puts greetings

def say_hello(words)
    puts words
end

say_hello "Hello Michelle"