sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'michelle', 'favcolor' => 'black'}
p my_details['favcolor']  # "black"
p sample_hash['b']        # 2
p sample_hash             # {"a"=>1, "b"=>2, "c"=>3}

another_hash = {a: 1, b: 2, c: 3}
p another_hash        # {:a=>1, :b=>2, :c=>3}
p another_hash[:a]    # 1

p sample_hash.keys    # ["a", "b", "c"]
p sample_hash.values  # [1, 2, 3]

sample_hash.each do |key, value|
  print key + ": " + value.to_s + " "   # a: 1 b: 2 c: 3
end

puts


# Symbol vs String
# Symbol is immutable strings
my_details.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
# The class for key is String and the value is String
# The class for key is String and the value is String


my_details = {:name=> 'michelle', :favcolor=> 'black'}
my_details.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
# The class for key is Symbol and the value is String
# The class for key is Symbol and the value is String


myhash = {a: 1, b: 2, c: 3, d: 4}
myhash[:e] = "Michelle"
p myhash    # {:a=>1, :b=>2, :c=>3, :d=>4, :e=>"Michelle"}
myhash[:c] = "Ruby"
p myhash    # {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Michelle"}

myhash.each{|key, val| print "#{key}: #{val} "}   # a: 1 b: 2 c: Ruby d: 4 e: Michelle

puts

p myhash.select{|key, val| val.is_a?(String)}     # {:c=>"Ruby", :e=>"Michelle"}

p myhash.each{|k, v| myhash.delete(k) if v.is_a?(String)}   # {:a=>1, :b=>2, :d=>4}