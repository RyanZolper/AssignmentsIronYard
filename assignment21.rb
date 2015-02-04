class Person
  attr_reader :first_name, :last_name, :age
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

  def findage(ageinput)
    CalculateAge(ageinput)
  end


private

  def CalculateAge(ageinput)
      inputdate = Date.parse(ageinput)
      today = Date.current
      yourage = today.strftime("%Y").to_i - inputdate.strftime("%Y").to_i
      bdthisyear = today.strftime("%Y") + "-" + inputdate.strftime("%m") + "-" + inputdate.strftime("%d")
      yourage -= 1  if today < Date.parse(bdthisyear)
      @age = yourage
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
  p.findage(bdinput)
  puts "First name: #{p.first_name}"
  puts "Last name: #{p.last_name}"
  puts "Birthday: #{p.birthday}"
  puts "Age: #{p.age}"
  puts "Person #: #{Person.personcount}"
end
