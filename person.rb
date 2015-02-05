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
