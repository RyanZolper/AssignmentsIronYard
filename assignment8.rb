print "Please input number"
limit = gets.chomp

n=1

while n<limit
  print n
  n = n+1
end

For n in (1..limit)
print n
n = n+1
end

limit.times do
  print n
  n = n+1
end

until n == limit
  print n
  n = n+1
end

limit.times do
  puts "count= " + n.to_s
  n= n+1
end

For n in (1...limit+1)
print n
n = n+1
end
