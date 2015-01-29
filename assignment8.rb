print "Please input number"
limit = gets.chomp.to_i

n=1

while n<limit
  print n
  n = n+1
end

n=1

for n in(1..limit)
print n
n = n+1
end

n=1

limit.times do
  print n
  n = n+1
end

n=1

until n == limit
  print n
  n = n+1
end

n=1

limit.times do
  puts "count= " + n.to_s
  n= n+1
end

n=1

for n in (1...limit+1)
print n
n = n+1
end
