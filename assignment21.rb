


nameinput = "nothing"

loop do

  puts "Hey man, what's your name?"
  nameinput = gets.chomp
  break if nameinput == '\q'
  p = Person.new
  p.name(nameinput)
  puts "Hello #{p.first_name}"
  puts "What is your birthday? (YYYY-MM-DD)"
  bdinput = gets.chomp
  p.bd(bdinput)
  puts "First name: #{p.first_name}"
  puts "Last name: #{p.last_name}"
  puts "Birthday: #{p.birthday}"
  puts "Age: #{p.findage}"
  puts "Person #: #{Person.personcount}"
end
