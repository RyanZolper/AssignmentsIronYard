require 'json'
require 'net/http'

puts "Please enter a movie title:"

input = gets.chomp

uri = URI("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=3w4er6dzz8w23ct8jhhbbmvt&q=#{input}")

jsonoutput = Net::HTTP.get(uri)

file = JSON.parse(jsonoutput)
moviesarray = file["movies"]



moviesarray.each do |a|
  print "Title: "
  puts a["title"]
  print "Synopsis: "
  puts a["synopsis"]
end
