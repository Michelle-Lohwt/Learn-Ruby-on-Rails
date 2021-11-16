# Arrays
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a       # [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a.last  # 9

# Range
x = 1..10 # inclusive
p x
p x.class # Range (class type)
p x.to_a          # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p x.to_a.shuffle  # [2, 7, 8, 1, 10, 4, 3, 9, 5, 6]
p x               # 1..10
p x.to_a.shuffle! # [8, 5, 7, 4, 1, 6, 10, 3, 9, 2]
p x               # 1..10

z = x.to_a.shuffle!
p z               # [9, 10, 7, 1, 6, 8, 2, 3, 4, 5]

x = (1..10).to_a
p x               # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p x.reverse       # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
p x               # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p x.reverse!      # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
p x               # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]


x = "a".."d"
p x.to_a            # ["a", "b", "c", "d"]
p x.to_a.shuffle    # ["c", "d", "a", "b"]
# p x.length        // undefined method `length' for "a".."d":Range (NoMethodError)
y = x.to_a.shuffle
p y                 # ["a", "b", "c", "d"]
p y.length          # 4


# Append
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a.length
a << 10
p a                     # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.last                # 10
p a.first               # 1
p a.unshift("Michelle") # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.append("Michelle")  # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Michelle"]
p a.uniq                # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a                     # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Michelle"]
p a.uniq!               # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a                     # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.empty?              # false

b = []
p b.empty?                # true
p a.include?("Michelle")  # true
p a.include?("Mic")       # false

p a.push("new item")  # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "new item"]
b = a.pop
p a                   # ["Michelle", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p b                   # "new item"

p a.join        # "Michelle12345678910"
p a.join("-")   # "Michelle-1-2-3-4-5-6-7-8-9-10"
p a.join(", ")  # "Michelle, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10"

b = a.join("-")
p b.split       # ["Michelle-1-2-3-4-5-6-7-8-9-10"]
p b.split("-")  # ["Michelle", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

# %w return array of strings
z = %w(my name is michelle and Ruby is amazing)   # ["my", "name", "is", "michelle", "and", "Ruby", "is", "amazing"]
p z     # ["my", "name", "is", "michelle", "and", "Ruby", "is", "amazing"]
p z.each()  # #<Enumerator: ["my", "name", "is", "michelle", "and", "Ruby", "is", "amazing"]:each>

for i in z
  print i + " " # my name is michelle and Ruby is amazing 
end

puts

z.each do |word|
  print word + " "  # my name is michelle and Ruby is amazing 
end

puts
z.each {|word| print word + " "}  # my name is michelle and Ruby is amazing
puts
z.each {|word| print word.capitalize + " "} # My Name Is Michelle And Ruby Is Amazing
puts

z = (1..10).to_a.shuffle
p z.select{|num| num.odd?}  # [1, 3, 9, 7, 5]