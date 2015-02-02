questions = File.new("questions.txt")
qs = questions.readlines


r = 0
x = 0

ary = Array.new

qs.each do |q|
  print q
  a = gets.chomp

  ary[x] = a
  x += 1

end

s = 0

qs.each do |q|
  puts q
  puts ary[s]
  s += 1
end

qs.close
