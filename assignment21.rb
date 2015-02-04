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






  def age(ageinput)
      inputdate = Date.parse(ageinput)
      today = Date.current
      yourage = today.strftime("%Y").to_i - inputdate.strftime("%Y").to_i
      bdthisyear = today.strftime("%Y") + "-" + inputdate.strftime("%m") + "-" + inputdate.strftime("%d")
      yourage -= 1  if today < Date.parse(bdthisyear)
      @age = yourage
  end


end
