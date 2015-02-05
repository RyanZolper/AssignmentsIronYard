class Person
  attr_reader :first_name, :last_name
  attr_accessor :birthday



  def name(input)
    namearray = input.split
    @first_name = namearray[0]
    @last_name = namearray[1]
  end

  require 'Date'
  require 'active_support'
  require 'active_support/all'

  def bd(bdinput)
    @birthday = Date.parse(bdinput)
  end

  count = 0

  @@trynacount = 0


  def self.personcount
    @@trynacount +=1
  end

  def findage
    calculateAge
  end

private


  def calculateAge
    dob = Date.current - @birthday
    age = dob.to_i / 365
  end


end


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
