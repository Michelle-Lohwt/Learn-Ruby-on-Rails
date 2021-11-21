require 'bcrypt'

my_password = BCrypt::Password.create("my password")

puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

my_password = BCrypt::Password.new("$2a$12$j/iC4gfOgmExeLyK7PHYA.Ahxpks7P3rUlxr.DmSKIqUFgu3h8RPu")
puts my_password == "my password"     #=> true



my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == my_password_1   #=> false
puts my_password == "my password"   #=> true