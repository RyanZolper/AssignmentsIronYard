puts "Guess a number from 1 to 15"

a = rand(1...15)

r = gets.chomp.to_i

count = 1

until r == a

puts 'nope'
  if r < a
    puts 'too low bro'
  else puts 'too high, tough guy'
  end
  puts 'Guess again, chump.'
  r = gets.chomp.to_i
  count += 1
end

puts "Congratulations! You guessed #{count} times! You suck!"
