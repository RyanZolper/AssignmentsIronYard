qs = ["what's your name?", "who's your daddy?", "is he rich like me?"]

qs.each do |q|
  print q
  a = gets.chomp
  a = a.to_i + 1
end
