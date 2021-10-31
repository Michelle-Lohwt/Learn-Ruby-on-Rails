puts 10 == 9        # false
puts 10 == 10       # true
puts 10 == "10".to_i    # true
puts 10 == "10".to_f    # true
puts 10 == 9        # false
puts "hello" != "bye"   # true
puts "hello" != "hello" # false
puts "hello" == "hello" # true
puts 100 > 99   # true
puts 100 >= 99  # true
puts 100 >= 101 # false
puts 100 <= 101 # true
puts "" == " "  # false

puts 10 === 10.0    # true
puts 10.eql?(10.0)  # false (comparing types)