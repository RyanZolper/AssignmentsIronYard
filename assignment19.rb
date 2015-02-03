require 'Date'
require 'active_support'
require 'active_support/all'

today = Date.today
puts today.beginning_of_week
puts today + 30

yearfromnow = today + 1.year

puts yearfromnow.strftime("%A")

print "Please enter your birthday in YYYY-MM-DD"

inputraw = gets.chomp
input = Date.parse(inputraw)
thisyearbd = input.change(year: 2015)
print "This year your birthday is on a "
puts thisyearbd.strftime("%A")

print "Please enter a singular word: "
word = gets.chomp

puts word.pluralize

print "Please enter a plural word: "
words = gets.chomp

puts words.singularize

puts "Please enter a phrase over 20 characters and I'll cut off some of them: "
phrase = gets.chomp
puts phrase.truncate(20)

ary = ["How", "are", "you?"]
puts ary.join(" ")
