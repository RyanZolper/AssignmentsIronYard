print "What is your name?"
name= gets.chomp

print "Waddup #{name.capitalize}?"




print "What is your birthday? Please use yyyy-mm-dd"
birthdayraw= gets.chomp

require 'date'

raw= Date.parse(birthdayraw)

#date manipulation is confusing

birthday =  raw.strftime("%A" ", "  "%B" " " "%d" ", " "%Y")

print "Happy Birthday #{name.capitalize}! (#{birthday})"
