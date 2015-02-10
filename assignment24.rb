load 'company.rb'
load 'employee.rb'

newcomp = Company.new
puts "Please enter the name of your company: "
newcomp.name = gets.chomp
puts "Please enter your company's location: "
newcomp.city = gets.chomp

x = 0
empary = Array.new

loop do
  puts "Hire new employee? (y/n)"
  hiring = gets.chomp
  break if hiring == "n"
  newguy = Employee.new
  puts "Please enter a candidate's name to hire them: "
  newguy.name = gets.chomp
  x += 1
  newguy.id = x
  puts "Hired: #{newguy.name}! ID ##{newguy.id}"
  empary.push(newguy)
end

newcomp.employees = empary

newcomp.showemps

puts "Enter employees's ID to fire: "
fired = gets.chomp
newcomp.employees.delete_if {|emp| emp.id == fired.to_i }
puts "These guys made it: "
newcomp.showemps
